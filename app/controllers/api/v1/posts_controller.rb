class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts, include: [:comments, :user, :votes]
    end

    def create
        post = Post.new(post_params)

        if post.valid?
            post = Post.create(post_params)
            render json: post
        else
            render json: {error: 'ERROR: Please enter in all fields.'}
        end
    end

    def show
        post = Post.find_by(:id => params[:id])
        render json: post, include: [:comments, :user, :votes]
    end

    def update
        post = Post.find_by(:id => params[:id])
        post.update(post_params)

        if post.valid?
            render json: post, include: [:comments]
        else
            render json: {error: 'ERROR: Unable to update post. Please enter content.'}
        end
    end

    def destroy
        post = Post.find_by(:id => params[:id])
        post.destroy
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :user_id, :content)
    end

end
