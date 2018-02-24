class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :day_1, null: false
      t.string :day_2, null: false
      t.string :day_3
      t.string :day_4
      t.string :day_5
      t.string :starting_time, null: false
      t.string :ending_time, null: false

      t.timestamps
    end
  end
end
