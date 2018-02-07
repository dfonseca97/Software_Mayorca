class AddUnique < ActiveRecord::Migration[5.1]
  def change
  	add_index :associates, :code, unique: true
  end
end
