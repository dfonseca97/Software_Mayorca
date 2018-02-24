class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.boolean :active
      t.integer :schedule_id, null: false

      t.timestamps
    end
  end
end
