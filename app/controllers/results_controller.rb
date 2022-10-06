class ResultsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :not_valid

    def index
        render json: Result.all, status: :ok
    end

    def show
        res = Result.find(params[:id])
        render json: res, status: :ok
    end

    def create
        res = Result.create!(rparams)
        render json: res, status: 201
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

    def rparams 
        params.permit(:win, :loss, :game, :user_id)
    end

    def not_found
       render json: {error: "Result not found"}, status: 404
    end

    def not_valid(error)
        render json: {error: error.message}, status: 422
     end
end
