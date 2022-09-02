class AddPlantTypeColumnToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :plant_type, :string
  end
end
