class OauthController < ApplicationController
  skip_before_action :authenticate_user!

  def github
    token = HTTParty.post('https://github.com/login/oauth/access_token', {
      query: {
        client_id: ENV["GITHUB_CLIENT_ID"],
        client_secret: ENV["GITHUB_SECRET"],
        code: params[:code]
      },
      headers: { 'Accept' => 'application/json' }
      }).parsed_response #should print out access token which we use to request the user profile

      # p token
      profile = HTTParty.get('https://api.github.com/user', {
        query: token,
        headers: {'User-Agent' => 'HTTParty', 'Accept' => 'application/json' }
      }).parsed_response

      # p profile # gets the users profile

      user = User.where("email = :email OR github_id = :github_id", email: profile["email"], github_id: profile["id"]).first #making either/or request for id or email

      user = User.new name: profile["login"], email: profile["email"] unless user

      user[:github_id] = profile["id"]

      # p user should see user details
      #422 error click on the error on the console network - All- should print error message
      if user.save
        token = Auth.issue({ id: user.id })
        render json: {messages: 'WORK GOD DAMMNIT ', user: UserSerializer.new(user), token: token}, status: :ok
      else
        render json: { errors: user.errors.full_messages }, status:
        :unprocessable_entity
      end
  end
end
