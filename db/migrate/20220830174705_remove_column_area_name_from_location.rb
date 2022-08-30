class RemoveColumnAreaNameFromLocation < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :area_name, :string
  end
end
