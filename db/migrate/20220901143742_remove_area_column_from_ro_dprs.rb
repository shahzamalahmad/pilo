class RemoveAreaColumnFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :area, :string
  end
end
