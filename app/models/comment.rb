class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :content, presence: true

    def update_comment
        self.upvotes = self.upvotes + 1
        self.save
    end

    def update_karma
        user = User.find(self.user_id)
        user.karma = user.karma + 1
        user.save
    end

    def update_post
        post = Post.find(self.post_id)
        post.upvotes = post.upvotes + 1
        post.save
    end

    def upvote
        self.update_comment
        self.update_karma
        self.update_post
    end

end
