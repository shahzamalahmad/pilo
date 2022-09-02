class RemoveOperatorNameColumnFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :operator_name, :string
  end
end
