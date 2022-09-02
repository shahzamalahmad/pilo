class AddOperatorRefToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_reference :ro_dprs, :operator, null: true, foreign_key: true
  end
end
