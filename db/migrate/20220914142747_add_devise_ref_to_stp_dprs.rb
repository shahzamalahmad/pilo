class AddDeviseRefToStpDprs < ActiveRecord::Migration[7.0]
  def change
     add_column :stp_dprs, :user_id, :integer
    add_index :stp_dprs, :user_id
  end
end
