class AddPhToRoDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :ro_dprs, :ph, :string
  end
end
