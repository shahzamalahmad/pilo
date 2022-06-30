class RemoveNameFromRoTemps < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_temps, :name, :integer
  end
end
