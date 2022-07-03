class AddAreaToRoDpr < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :area, :string
  end
end
