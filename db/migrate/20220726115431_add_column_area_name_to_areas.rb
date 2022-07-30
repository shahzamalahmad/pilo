class AddColumnAreaNameToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :area_name, :string
  end
end
