class AddDeviseRefToRoDprrs < ActiveRecord::Migration[7.0]
  def change
     add_column :ro_dprs, :user_id, :integer
    add_index :ro_dprs, :user_id
  end
end
