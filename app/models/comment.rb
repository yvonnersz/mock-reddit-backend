class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :content, presence: true

    def upvote_comment
        self.user_id.karma = self.user_id.karma ++
        self.upvotes = self.upvotes ++ 
        self.save
    end

end
