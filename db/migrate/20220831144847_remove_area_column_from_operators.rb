class RemoveAreaColumnFromOperators < ActiveRecord::Migration[7.0]
  def change
    remove_column :operators, :area, :string
  end
end
