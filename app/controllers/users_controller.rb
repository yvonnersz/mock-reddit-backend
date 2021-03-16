class UsersController < ApplicationController
    def create
        user = User.create(
            :username => params[:user][:username],
            :password => params[:user][:password],
            :password_confirmation => params[:user][:password_confirmation]
        )

        if user
            session[:user_id] = user.id
            render json: user
        else
            render json: {
                error: 'Please try again.'
            }
        end
    end
end