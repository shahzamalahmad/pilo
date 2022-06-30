class RemoveNameFromRoPhs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_phs, :name, :integer
  end
end
