class ChangeTypeRoDprDprId < ActiveRecord::Migration[7.0]
  def change
    change_column :ro_dprs, :dpr_id, :integer, null: true 
  end
end
