class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    validates :title, :subreddit, :content, presence: true

    def upvote_post
        self.user_id.karma = self.user_id.karma ++ 
        self.upvotes = self.upvotes++
        self.save
    end

end
