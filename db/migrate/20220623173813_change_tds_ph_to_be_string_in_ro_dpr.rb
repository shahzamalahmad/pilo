class ChangeTdsPhToBeStringInRoDpr < ActiveRecord::Migration[7.0]
  def change
    change_column :ro_dprs, :tds_ph, :string
  end
end
