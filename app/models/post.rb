class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :subreddit, :content, presence: true
end
