class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, :subreddit, :content, presence: true

    def upvote
        self.upvotes = self.upvotes + 1
        self.save
    end

end
