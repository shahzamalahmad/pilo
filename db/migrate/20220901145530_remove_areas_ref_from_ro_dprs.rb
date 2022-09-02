class RemoveAreasRefFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :ro_dprs, :areas, null: false, foreign_key: true
  end
end
