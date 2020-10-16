class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :upvotes
  belongs_to :user
  belongs_to :post
end
