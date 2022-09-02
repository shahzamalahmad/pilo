class RemoveLocationColumnFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :location, :string
  end
end
