class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :subreddit, :user, :content, :upvotes
  has_many :comments
end
