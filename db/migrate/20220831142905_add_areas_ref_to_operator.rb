class AddAreasRefToOperator < ActiveRecord::Migration[7.0]
  def change
    add_reference :operators, :area, null: false, foreign_key: true
  end
end
