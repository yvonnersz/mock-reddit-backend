class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :subreddit, :user, :content, :upvotes, :toggle_upvote, :toggle_downvote
  has_many :comments
end
