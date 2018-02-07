class AddConstraints < ActiveRecord::Migration[5.1]
  def change

  	change_column :associates, :name, :string, null: false
  	change_column :associates, :last_name, :string, null: false
  	#add_index :associates, :code, unique: true

  end
end
