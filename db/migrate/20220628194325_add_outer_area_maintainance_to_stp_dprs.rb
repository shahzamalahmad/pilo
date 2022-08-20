class AddOuterAreaMaintainanceToStpDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :stp_dprs, :outer_area_maintainance, :string
  end
end
