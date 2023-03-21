class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :screenings, :response, :screening_description
  end
end
