class GuessesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :not_valid

    def index
        render json: Guess.all, status: :ok
    end

    def show
        guess = Guess.find(params[:id])
        render json: guess, status: :ok
    end

    def create
        guess = Guess.create!(g_params)
        render json: guess, status: 201
    end

    def update
        guess = Guess.find(params[:id])
        guess.update!(g_params)
        render json: guess, status: 201
    end

    def destroy
        Guess.find(params[:id]).destroy
        render json: {}, status: 202
    end

    private

    def g_params 
        params.permit(:guess_1,:guess_2,:guess_3,:guess_4, :guess_5, :user_id,:word_id)
    end

    def not_found
       render json: {error: "Guess not found"}, status: 404
    end

    def not_valid(error)
        render json: {error: error.message}, status: 422
     end
end
