class RemoveUserIdFromStpDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :stp_dprs, :user_id, :string
  end
end
