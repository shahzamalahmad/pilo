class AddColumnPreparedByToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :prepared_by, :string
  end
end
