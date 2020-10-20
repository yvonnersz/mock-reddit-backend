class Comment < ApplicationRecord
    belongs_to :post
    validates :content, presence: true

    def upvote
        self.upvotes = self.upvotes + 1
        self.save
    end

    def downvote
        self.upvotes = self.upvotes - 1
        self.save
    end
end
