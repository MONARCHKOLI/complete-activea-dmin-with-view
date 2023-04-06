class AnswersController < ApplicationController
    # before_action :get_response, only: [:create]

    def new
        @question = Question.where(screening_id: params[:screening_id])
    end

    def create
        # To create the entity individually with question and answers

        params[:answer].permit!.except(:screening_id,:question_id,:user_id).to_h.each do |key,value|
            @answer = Answer.new(answer_params)
            @answer[:response] = {"#{key}": value}
            @answer.save
        end

        redirect_to root_path
    end

    def show
    end

    # def update
    #     @answer.response = params[:answer].except(:screening_id,:question_id)
    #     @answer.screening_id = params[:answer][:screening_id]
    #     @answer.question_id = params[:answer][:question_id]
    #     @answer.save
    # end

    private

    def answer_params
        params.require(:answer).permit(:screening_id, :question_id, :user_id, response: {})
    end

    # def get_response
    #     @answer = Answer.find(params[:id])
    # end

end
