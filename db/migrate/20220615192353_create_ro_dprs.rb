class CreateRoDprs < ActiveRecord::Migration[7.0]
  def change
    create_table :ro_dprs do |t|
      t.integer :sr_no
      t.string :location
      t.string :operator_name
      t.integer :tshirt
      t.integer :icard
      t.integer :mask
      t.integer :shoes
      t.integer :hygiene
      t.integer :live_location
      t.integer :behaviour
      t.integer :punctuality
      t.integer :photos
      t.integer :machine_videos
      t.integer :feedback
      t.integer :inspaction
      t.integer :backlight
      t.integer :wrapping
      t.integer :tv
      t.integer :glass
      t.integer :nozzle
      t.integer :cip_backwash
      t.integer :cleaning
      t.integer :camera
      t.integer :tds_ph
      t.integer :flow_temp
      t.integer :total_marks

      t.timestamps
    end
  end
end
