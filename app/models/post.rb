class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, :subreddit, :content, presence: true

    def upvote_post
        self.upvotes = self.upvotes + 1
        self.save
    end

    def upvote_karma
        user = User.find(self.user_id)
        user.karma = user.karma + 1
        user.save
    end

    def downvote_post
        self.upvotes = self.upvotes - 1
        self.save
    end

    def downvote_karma
        user = User.find(self.user_id)
        user.karma = user.karma - 1
        user.save
    end

    def upvote
        self.upvote_post
        self.upvote_karma
    end

    def downvote
        self.downvote_post
        self.downvote_karma
    end

end
