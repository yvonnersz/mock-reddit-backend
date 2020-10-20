class UserSerializer < ActiveModel::Serializer
  attributes :username, :karma
  has_many :posts
  has_many :comments
end
