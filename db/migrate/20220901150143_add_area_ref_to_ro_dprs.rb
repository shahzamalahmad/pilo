class AddAreaRefToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_reference :ro_dprs, :area, null: true, foreign_key: true
  end
end
