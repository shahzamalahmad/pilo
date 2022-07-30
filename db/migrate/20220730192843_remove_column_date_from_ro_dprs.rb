class RemoveColumnDateFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :date, :integer
  end
end
