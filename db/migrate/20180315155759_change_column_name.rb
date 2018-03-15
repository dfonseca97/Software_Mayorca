class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :schedules, :activity, :name 
  end
end
