class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    has_many :votes
    validates :content, presence: true
end
