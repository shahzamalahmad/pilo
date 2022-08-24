class AddColumnAreanameToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :areaname, :string
  end
end
