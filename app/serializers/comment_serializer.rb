<<<<<<< HEAD
class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :upvotes, :post_id, :user
  belongs_to :user
=======
class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user, :upvotes
>>>>>>> delete-user-model
  belongs_to :post
end
