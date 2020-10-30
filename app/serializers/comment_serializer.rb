class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user, :upvotes, :toggle_upvote, :toggle_downvote
  belongs_to :post
end
