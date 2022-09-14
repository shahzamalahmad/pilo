class AddLocationsRefToStpDprs < ActiveRecord::Migration[7.0]
  def change
    add_reference :stp_dprs, :location, null: true, foreign_key: true

  end
end
