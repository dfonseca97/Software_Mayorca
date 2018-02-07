class CreateAssociates < ActiveRecord::Migration[5.1]
  def change
    drop_table :associates
    create_table :associates do |t|
      t.string :code
      t.string :name
      t.string :last_name
      t.string :sponsor
      t.string :ascending_president
      t.string :ascending_tabulator
      t.string :last_payment

      t.timestamps
    end
  end
end
