class RemoveLocationColumnFromOperators < ActiveRecord::Migration[7.0]
  def change
    remove_column :operators, :location, :string
  end
end
