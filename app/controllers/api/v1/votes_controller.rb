class Api::V1::VotesController < ApplicationController
    before_action :set_post

    def index
        votes = Vote.all
        render json: votes
    end

    def create
        binding.pry
        vote = @post.votes.new(vote_params)

        if vote.valid?
            vote = @post.votes.create(vote_params)
            render json: vote
        end
    end

    def destroy
        vote = @post.votes.find_by(:id => params[:id])
        vote.destroy
        render json: vote
    end

    private

    def set_post
        @post = Post.find_by(:id => params[:post_id])
    end

    def vote_params
        params.require(:vote).permit(:upvote, :downvote, :user_id, :post_id)
    end

end
