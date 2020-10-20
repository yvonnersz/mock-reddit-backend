class CommentSerializer < ActiveModel::Serializer
  attributes :content, :upvotes
  belongs_to :user
  belongs_to :post
end
