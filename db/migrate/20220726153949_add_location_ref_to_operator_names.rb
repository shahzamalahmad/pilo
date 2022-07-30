class AddLocationRefToOperatorNames < ActiveRecord::Migration[7.0]
  def change
    add_reference :operator_names, :location, null: false, foreign_key: true
  end
end
