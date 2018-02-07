class UsersNotNullNameLastName < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :name, :string, null: false
  	change_column :users, :last_name, :string, null: false
  end
end
