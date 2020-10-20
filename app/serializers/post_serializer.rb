class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :subreddit, :content, :upvotes
  belongs_to :user
  has_many :comments
end
