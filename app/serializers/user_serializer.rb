class UserSerializer < ActiveModel::Serializer
  has_many :liked_styles
  has_many :styles_created
  has_many :comments

  attributes :id, :name, :comments, :styles_created, :liked_styles, :privacy, :profile_image

  def profile_image
  	object.image.url
  end
end
