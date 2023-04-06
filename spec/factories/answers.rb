FactoryBot.define do
  factory :answer do
    screening_id {1}
    question_id {2}
    user_id {2}
    response {{"question-id:12- What's the difference between a cold and the flu"=>"Not at all", "question-id:16-What are the symptoms of a cold? What are the symptoms of the flu? How can I tell them apart"=>"Not at all"}}
  end
end
