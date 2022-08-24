class AddRefLocationRefToOperators < ActiveRecord::Migration[7.0]
  def change
    add_reference :operators, :location, foreign_key: true
  end
end
