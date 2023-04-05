class Addcolumscreeningidtoanswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :screening_id, :integer
  end
end
