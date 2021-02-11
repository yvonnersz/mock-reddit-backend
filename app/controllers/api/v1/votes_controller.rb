class Api::V1::VotesController < ApplicationController
    before_action :set_post

    def index
        votes = Vote.all
        render json: votes
    end

    def create
        vote = @post.votes.new(vote_params)

        if vote.valid?
            vote = @post.votes.create(vote_params)
            render json: vote
        else
            render json: {
                error: 'You voted already'
            }
        end
    end

    private

    def set_post
        @post = Post.find_by(:id => params[:post_id])
    end

    def vote_params
        params.require(:vote).permit(:upvote, :downvote, :user_id, :post_id)
    end

end
