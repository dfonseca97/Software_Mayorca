class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.belongs_to :associate, index: true
      t.belongs_to :price, index: true
      t.string :associate_code
      t.string :activity_name
      t.date :date

      t.timestamps
    end
  end
end
