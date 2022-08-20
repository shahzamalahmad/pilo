class RemoveMaintainanceFromStpDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :stp_dprs, :maintainance, :string
  end
end
