class Api::V1::VotesController < ApplicationController

    def index
        votes = Vote.all
        render json: votes
    end

    def create
        if params[:post_id]
            @post = Post.find_by(:id => params[:post_id])
            vote = @post.votes.new(vote_params)

            if vote.valid?
                vote = @post.votes.create(vote_params)
                render json: vote
            end

        elsif params[:comment_id]
            @comment = Comment.find_by(:id => params[:comment_id])
            vote = @comment.votes.new(vote_params)

            if vote.valid?
                vote = @comment.votes.create(vote_params)
                render json: vote
            end
        end
        
    end

    def destroy
        @post = Post.find_by(:id => params[:post_id])

        vote = @post.votes.find_by(:id => params[:id])
        vote.destroy
        render json: vote
    end

    private

    def set_post
        @post = Post.find_by(:id => params[:post_id])
    end

    def set_comment
        @comment = Comment.find_by(:id => params[:comment_id])
    end

    def vote_params
        params.require(:vote).permit(:upvote, :downvote, :user_id, :post_id)
    end

end
