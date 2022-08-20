class RemoveOuterAreaFromStpDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :stp_dprs, :outer_area, :string
  end
end
