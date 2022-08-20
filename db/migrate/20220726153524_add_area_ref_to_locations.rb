class AddAreaRefToLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :area, null: false, foreign_key: true
  end
end
