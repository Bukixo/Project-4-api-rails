class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :style
  attributes :id, :body, :user
end
