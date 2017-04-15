class TypeSerializer < ActiveModel::Serializer
  belongs_to :styles
  attributes :id, :name
end
