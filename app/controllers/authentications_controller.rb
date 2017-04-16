class AuthenticationsController < ApplicationController
  def register
   user = User.new(user_params)
   if user.save
     render json: user, status: :ok
   else
     render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
   end
 end

  def login
  end

  private
  def user_params
    Hash.new.merge! params.slice(:name, :email, :password, :password_confirmation)
  end

end
