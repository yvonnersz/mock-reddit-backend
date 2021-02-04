class Api::V1::VotesController < ApplicationController
    before_action :set_post

    def index
        votes = Vote.all
        render json: votes
    end

    def create
        vote = @post.votes.create(vote_params)
        render json: vote

        # binding.pry

        # if vote.valid?
        #     @post.votes.create(vote_params)
        #     render json: vote, include: [:post]
        # end
    end

    private

    def set_post
        @post = Post.find_by(:id => params[:post_id])
    end

    def vote_params
        params.require(:vote).permit(:upvote, :downvote, :user_id, :post_id)
    end

end
