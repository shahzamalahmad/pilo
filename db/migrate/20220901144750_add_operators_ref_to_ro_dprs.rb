class AddOperatorsRefToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_reference :ro_dprs, :operators, null: true, foreign_key: true
  end
end
