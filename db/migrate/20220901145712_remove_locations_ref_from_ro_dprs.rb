class RemoveLocationsRefFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :ro_dprs, :locations, null: false, foreign_key: true
  end
end
