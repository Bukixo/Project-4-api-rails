class TypeSerializer < ActiveModel::Serializer
  has_many :styles
  attributes :id, :name
end
