class AddDeviseRefToOperators < ActiveRecord::Migration[7.0]
  def change
    add_column :operators, :user_id, :integer
    add_index :operators, :user_id
  end
end
