class AddFlowToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :flow, :string
  end
end
