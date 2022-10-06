class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :not_valid

    def index
        render json: Result.all, status: :ok
    end

    def show
        render json: @current_user
    end

    def create
        use = User.create!(uparams)
        session([:user_id]) = user.id
        render json: use, status: 201
    end

    # def update
    #     guess = Guess.find(params[:id])
    #     guess.update!(g_params)
    #     render json: guess, status: 201
    # end

    # def destroy
    #     Guess.find(params[:id]).destroy
    #     render json: {}, status: 202
    # end

    private

    def uparams 
        params.permit(:username, :password)
    end

    def not_found
       render json: {error: "User not found"}, status: 404
    end

    def not_valid(error)
        render json: {error: error.message}, status: 422
     end
end