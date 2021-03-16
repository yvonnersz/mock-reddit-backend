class SessionsController < ApplicationController
    include CurrentUserConcern

    def create
        user = User.find_by(
            :username => params[:user][:username]
        )
        
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: user
        else
            render json: {
                error: 'Invalid credentials.'
            }
        end
    end

    def logged_in?
        if @current_user
            render json: @current_user
        else
            render json: {
                logged_in: false
            }
        end
    end

    def logged_out?
        reset_session
        render json: {
            status: 200,
            logged_out: true
        }
    end
end