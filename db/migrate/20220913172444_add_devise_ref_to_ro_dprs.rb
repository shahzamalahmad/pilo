class AddDeviseRefToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :user_id, :integer
    add_index :areas, :user_id

  end
end
