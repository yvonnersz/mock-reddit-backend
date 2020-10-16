class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create(post_params)
        render json: post
    end

    def show
        post = Post.find_by(:id => params[:id])
        render json: post
    end

    def destroy
        post = Post.find_by(:id => params[:id])
        post.destroy
        render json: post
    end

    private

    def post_params
        params.require(:post).permit(:title, :subreddit, :content, :upvotes)
    end

end
