class AddTdsToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :tds, :string
  end
end
