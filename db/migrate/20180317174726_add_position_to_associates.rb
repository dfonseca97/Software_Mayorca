class AddPositionToAssociates < ActiveRecord::Migration[5.1]
  def change
  	add_column :associates, :position, :string
  end
end
