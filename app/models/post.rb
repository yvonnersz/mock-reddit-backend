class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :votes
    validates :title, :subreddit, :content, presence: true

    # def total_upvotes
    #     upvotes = self.votes.select {|vote| vote.upvote}
    #     downvotes = self.votes.select {|vote| vote.downvote}

    #     upvotes.length - downvotes.length
    # end

end
