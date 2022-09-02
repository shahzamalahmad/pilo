class RemoveOperatorsRefFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :ro_dprs, :operators, null: false, foreign_key: true
  end
end
