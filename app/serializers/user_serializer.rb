class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :karma
  has_many :posts
  has_many :comments
end
