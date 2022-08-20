class CreateStpDprs < ActiveRecord::Migration[7.0]
  def change
    create_table :stp_dprs do |t|
      t.string :sr_no
      t.string :location
      t.string :operator_name
      t.string :uniform
      t.string :mask
      t.string :photos
      t.string :videos
      t.string :live_location
      t.string :behaviour
      t.string :punctuality
      t.string :pcl_display_picture
      t.string :daily_report
      t.string :r_and_m
      t.string :backwash
      t.string :blower_oil
      t.string :compressor_oil
      t.string :outer_area
      t.string :maintainance
      t.string :total_marks

      t.timestamps
    end
  end
end
