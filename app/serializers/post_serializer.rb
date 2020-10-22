<<<<<<< HEAD
class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :subreddit, :content, :upvotes
  belongs_to :user
=======
class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :subreddit, :user, :content, :upvotes
>>>>>>> delete-user-model
  has_many :comments
end
