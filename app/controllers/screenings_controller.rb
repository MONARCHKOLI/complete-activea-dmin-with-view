class ScreeningsController < ApplicationController
    # before_action :get_screening, only: [:create]
    def index
        @screening = Screening.all
    end

    def show

    end

    def new
        @question = Question.where(screening_id: params[:screening_id])
        @screening = Screening.new
    end

    def create
        @screening = Screening.create(:screening_type,:screening_description)
        # @answer = Answer.create(:question_id @screening.id, :answer, :user_id current_user)
        redirect_to screenings_path
    end

end
