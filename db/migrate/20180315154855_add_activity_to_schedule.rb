class AddActivityToSchedule < ActiveRecord::Migration[5.1]
  def change
  	add_column :schedules, :activity, :string
  end
end
