class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user, :upvotes
  belongs_to :post
end
