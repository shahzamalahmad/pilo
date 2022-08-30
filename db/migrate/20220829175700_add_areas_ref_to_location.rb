class AddAreasRefToLocation < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :areas, null: false, foreign_key: true
  end
end
