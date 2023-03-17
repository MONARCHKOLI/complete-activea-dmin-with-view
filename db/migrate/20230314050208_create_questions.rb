class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :screening_id
      t.string :question_type

      t.timestamps
    end
  end
end
