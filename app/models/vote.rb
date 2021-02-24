class Vote < ApplicationRecord
    belongs_to :user
    belongs_to :post
    belongs_to :comment, optional: true
    # validates :post, :uniqueness => { :scope => :user_id }
    # validates :comment, :uniqueness => { :scope => :user_id }
end
