class CreateCheckIns < ActiveRecord::Migration[5.2]
  def change
    create_table :check_ins do |t|
      t.integer :patient_id
      t.integer :user_id
      t.timestamps
    end
  end
end
