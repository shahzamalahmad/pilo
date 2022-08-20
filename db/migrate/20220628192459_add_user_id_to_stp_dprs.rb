class AddUserIdToStpDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :stp_dprs, :user_id, :string
  end
end
