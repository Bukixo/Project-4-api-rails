class StyleSerializer < ActiveModel::Serializer
  has_many :likes
  belongs_to :user
  has_many :comments
  attributes :id, :name, :products, :date, :durability, :image, :own, :privacy, :tags, :user_id, :type_id #:method
end
