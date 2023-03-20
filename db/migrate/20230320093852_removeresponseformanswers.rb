class Removeresponseformanswers < ActiveRecord::Migration[6.1]
  def change
    remove_column :answers, :response
  end
end
