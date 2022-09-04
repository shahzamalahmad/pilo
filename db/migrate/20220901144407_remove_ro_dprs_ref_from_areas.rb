class RemoveRoDprsRefFromAreas < ActiveRecord::Migration[7.0]
  def change
    # remove_reference :areas, :ro_dpr, null: false, foreign_key: true
  end
end
