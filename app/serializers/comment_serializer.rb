class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :post_id, :user
  belongs_to :user
  belongs_to :post
end
