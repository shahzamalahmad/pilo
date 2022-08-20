class RemoveFlowTempFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :flow_temp, :string
  end
end
