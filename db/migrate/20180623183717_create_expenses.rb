class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :concept
      t.float :amount
      t.date :date
      t.string :receiver

      t.timestamps
    end
  end
end
