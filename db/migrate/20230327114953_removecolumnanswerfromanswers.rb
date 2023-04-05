class Removecolumnanswerfromanswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :answers, :answer, :string
  end
end
