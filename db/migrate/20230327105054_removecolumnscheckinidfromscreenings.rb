class Removecolumnscheckinidfromscreenings < ActiveRecord::Migration[6.1]
  def change
    remove_column :screenings, :check_in_id
  end
end
