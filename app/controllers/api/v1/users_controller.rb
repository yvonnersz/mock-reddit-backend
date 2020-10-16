class Api::V1::UsersController < ApplicationController

    def create
        user = User.find_or_create_by(user_params)
        render json: user
    end

    def show
        user = User.find_by(:id => params[:id])
        render json: user
    end

    def destroy
        user = User.find_by(:id => params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :karma)
    end

end
