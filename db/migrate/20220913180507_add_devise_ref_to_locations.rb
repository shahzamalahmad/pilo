class AddDeviseRefToLocations < ActiveRecord::Migration[7.0]
 def change
    add_column :locations, :user_id, :integer
    add_index :locations, :user_id

  end
end
