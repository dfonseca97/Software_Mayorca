class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :position, null: false
      t.string :activity, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
