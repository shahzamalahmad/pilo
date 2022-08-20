class AddTempToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :temp, :string
  end
end
