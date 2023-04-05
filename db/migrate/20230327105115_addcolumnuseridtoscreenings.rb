class Addcolumnuseridtoscreenings < ActiveRecord::Migration[6.1]
  def change
    add_column :screenings, :user_id, :integer
  end
end
