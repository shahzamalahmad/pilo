class AddColumnDateToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :date, :date
  end
end
