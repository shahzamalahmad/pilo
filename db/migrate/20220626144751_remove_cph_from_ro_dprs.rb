class RemoveCphFromRoDprs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ro_dprs, :cph, :string
  end
end
