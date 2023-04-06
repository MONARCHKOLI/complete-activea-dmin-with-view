require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
    let(:answer) {FactoryBot.create :answer}
    
    describe "answer create" do
        it "return to root path" do
            byebug
            redirect_to(root_path)
        end
    end

end