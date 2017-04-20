class StyleSerializer < ActiveModel::Serializer
  has_many :likes
  belongs_to :user
  has_many :comments
  belongs_to :type

  attributes :id, :name, :likes, :products, :date, :durability, :own, :privacy, :tags, :user, :type_id, :procedure, :like_ids, :comments, :image_src

  def image_src
  	object.image.url
  end
end
