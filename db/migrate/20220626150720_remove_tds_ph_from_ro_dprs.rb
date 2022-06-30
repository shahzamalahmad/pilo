class RemoveTdsPhFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :tds_ph, :integer
  end
end
