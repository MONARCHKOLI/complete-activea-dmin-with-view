ActiveAdmin.register Answer do

    # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :question_id, :response,:screening_id,:user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:question_id, :response, :answer]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # questions = {}

  # Question.all.each do |question|
  #   questions.merge!("#{question.question}": question.id)
  # end 

  form do |f|
    # f.inputs do
    #   f.label :select_question_
    #   f.select :question_id, questions
    #   f.input :response
    #   # f.input :user_id
    #   f.semantic_errors *f.object.errors.attribute_names
    # end
    # f.actions
  end

  show do
    attributes_table title: "Question Details" do
      row :user_id do
        User.find(resource&.user_id)
      end
      row :Description do
        Screening.find(Question.find(resource.question_id).screening_id).screening_description
      end
      row :screening_type do
        Screening.find(Question.find(resource&.question_id).screening_id).screening_type
      end
      # row :Question do
      #   resource.response.keys.each do |question|
      #     question
      #   end
      # end

      resource.response.keys.each_with_index do |key,index|
        row "Question_#{index+1}" do
          key
        end
        row "Answer" do
          resource.response[key]
        end
      end
      
      # row :answer do
      #   "#{resource.response}"
      # end
      row :created_at do
        resource&.created_at
      end
      
    end
  end

  index do
    selectable_column
    id_column
    # column :question_id do |question|
    #   Question.find(question.question_id).question
    # end
    column :response
    column :user_id do |answer|
      User.find(answer.user_id)
    end
    column :created_at
    actions
  end
end
