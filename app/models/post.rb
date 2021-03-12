class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :votes
    validates :title, :content, presence: true
end
