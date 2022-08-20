class ChangeTypeStpDprDprId < ActiveRecord::Migration[7.0]
  def change
    change_column :stp_dprs, :dpr_id, :integer, null: true 
    
  end
end
