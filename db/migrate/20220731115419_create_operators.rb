class CreateOperators < ActiveRecord::Migration[7.0]
  def change
    create_table :operators do |t|
      t.string :operator_name
      t.string :location
      t.string :area
      t.string :plant_type


      t.timestamps
    end
  end
end
