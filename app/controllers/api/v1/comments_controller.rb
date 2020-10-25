class Api::V1::CommentsController < ApplicationController
    before_action :set_post

    def index
        comments = @post.comments
        render json: comments
    end

    def create
        comment = @post.comments.create(comment_params)
        comment.post.upvote
        render json: comment, include: [:post]
    end

    def show
        comment = @post.comments.find_by(:id => params[:id])
        render json: comment, include: [:post]
    end

    def update
        comment = @post.comments.find_by(:id => params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy
        comment = @post.comments.find_by(:id => params[:id])
        comment.destroy
        render json: comment
    end

    private

    def set_post
        @post = Post.find_by(:id => params[:post_id])
    end
    
    def comment_params
        params.require(:comment).permit(:id, :content, :user, :upvotes, :post_id)
    end

end
