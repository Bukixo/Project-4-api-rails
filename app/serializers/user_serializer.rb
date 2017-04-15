class UserSerializer < ActiveModel::Serializer
  has_many :styles_created
  has_many :liked_styles
  attributes :id
end
