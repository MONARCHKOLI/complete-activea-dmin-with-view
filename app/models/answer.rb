class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :screening
    belongs_to :question
end
