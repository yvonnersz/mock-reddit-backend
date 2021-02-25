class Api::V1::CommentsController < ApplicationController
    before_action :set_post

    def index
        comments = @post.comments
        render json: comments
    end

    def create
        comment = @post.comments.new(comment_params)

        if comment.valid?
            comment = Comment.create(comment_params)
            render json: comment, include: [:post, :user, :votes]
        else
            render json: {error: 'ERROR: Please enter in required fields.'}
        end
    end

    def show
        comment = @post.comments.find_by(:id => params[:id])
        render json: comment, include: [:post, :votes]
    end

    def update
        comment = @post.comments.find_by(:id => params[:id])
        comment.update(comment_params)

        if comment.valid?
            render json: comment
        else
            render json: {error: 'ERROR: Unable to update comment. Please enter in content.'}
        end
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
        params.require(:comment).permit(:content, :user_id, :post_id)
    end

end
