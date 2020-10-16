class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, :subreddit, :content, presence: true
end
