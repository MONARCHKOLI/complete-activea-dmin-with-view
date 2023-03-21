class Changedatatypeforfieldname < ActiveRecord::Migration[6.1]
  def change
    change_column(:screenings, :screening_description, :string)
  end
end
