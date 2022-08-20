class AddDprRefToStpDpr < ActiveRecord::Migration[7.0]
  def change
    add_reference :stp_dprs, :dpr, null: false, foreign_key: true
  end
end
