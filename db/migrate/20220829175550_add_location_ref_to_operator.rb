class AddLocationRefToOperator < ActiveRecord::Migration[7.0]
  def change
    add_reference :operators, :location, null: false, foreign_key: true
  end
end
