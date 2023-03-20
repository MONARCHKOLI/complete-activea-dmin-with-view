class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.json :response
      t.string :answer

      t.timestamps
    end
  end
end
