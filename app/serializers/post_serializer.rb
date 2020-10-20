class PostSerializer < ActiveModel::Serializer
  attributes :title, :subreddit, :content, :upvotes
  belongs_to :user
  has_many :comments
end
