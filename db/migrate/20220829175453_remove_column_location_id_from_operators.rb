class RemoveColumnLocationIdFromOperators < ActiveRecord::Migration[7.0]
  def change
    remove_column :operators, :location_id, :integer
  end
end
