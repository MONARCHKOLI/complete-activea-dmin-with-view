class AnswersController < ApplicationController

    def new
        @question = Question.where(screening_id: params[:screening_id])
        @answer = Answer.new
    end

    def create
        @answer = Answer.create!(answer_params)
        redirect_to root_path
    end

    def show
        @answer = Answer.find(params[:id])
    end

    private

    def answer_params
        byebug
        params.require(:answer).permit(:screening_id,:question_id,:user_id,:response)
    end

end
