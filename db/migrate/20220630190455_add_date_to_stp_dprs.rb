class AddDateToStpDprs < ActiveRecord::Migration[7.0]
  def change
    add_column :stp_dprs, :date, :string
  end
end
