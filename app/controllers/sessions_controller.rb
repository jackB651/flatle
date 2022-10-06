class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
    
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user
        else
            render json: {error: "Username or Password is incorrect"}, status: :unauthorized
        end
    end

    def destroy
        session.destroy :user_id
        head :no_content
    end
end
