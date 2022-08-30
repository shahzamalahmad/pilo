class RemoveAreasRefFromLocation < ActiveRecord::Migration[7.0]
  def change
    remove_reference :locations, :areas, null: false, foreign_key: true
  end
end
