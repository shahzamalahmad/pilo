class AddCphToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :cph, :string
  end
end
