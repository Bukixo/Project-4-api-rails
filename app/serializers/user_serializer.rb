class UserSerializer < ActiveModel::Serializer
  has_many :liked_styles
  has_many :styles_created
  has_many :comments

  attributes :id, :name, :comments, :styles_created, :liked_styles, :privacy, :image_src

  def image_src
  	object.image.url
  end
end
