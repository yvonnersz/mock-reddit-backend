class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, :subreddit, :content, presence: true

    def update_post
        self.upvotes = self.upvotes + 1
        self.save
    end

    def update_karma
        user = User.find(self.user_id)
        user.karma = user.karma + 1
        user.save
    end

    def upvote
        self.update_post
        self.update_karma
    end

end
