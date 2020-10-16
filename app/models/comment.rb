class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :content, presence: true

    def upvote_comment
        self.upvotes = self.upvotes + 1
        self.save
    end

    def upvote_karma
        user = User.find(self.user_id)
        user.karma = user.karma + 1
        user.save
    end

    def upvote
        self.upvote_comment
        self.upvote_karma
    end

    def downvote_comment
        self.upvotes = self.upvotes - 1
        self.save
    end

    def downvote_karma
        user = User.find(self.user_id)
        user.karma = user.karma - 1
        user.save
    end

    def downvote
        self.downvote_comment
        self.downvote_karma
    end

end
