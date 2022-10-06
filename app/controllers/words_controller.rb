class WordsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    rescue_from ActiveRecord::RecordInvalid, with: :not_valid

    def index
        render json: Word.all, status: :ok
    end

    def show
        word = Word.find(params[:id])
        render json: word, status: :ok
    end

    def create
        word = Word.create!(wparams)
        render json: word, status: 201
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

    def wparams 
        params.permit(:entry)
    end

    def not_found
       render json: {error: "Word not found"}, status: 404
    end

    def not_valid(error)
        render json: {error: error.message}, status: 422
     end
end
