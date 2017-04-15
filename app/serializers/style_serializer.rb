class StyleSerializer < ActiveModel::Serializer
  has_many :likes
  belongs_to :user
  has_many :comments
  attributes :id, :method, :products, :date, :durability, :image, :own, :privacy, :tags
end
