class Api::V1::PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create(post_params)
        post.upvote
        render json: post
    end

    def show
        post = Post.find_by(:id => params[:id])
        render json: PostSerializer.new(post, {include: [:user, :comments]})
    end

    def destroy
        post = Post.find_by(:id => params[:id])
        post.destroy
    end

    private

    def post_params
        params.require(:post).permit(:title, :subreddit, :content, :upvotes)
    end

end
