class RemoveColumnFromOperators < ActiveRecord::Migration[7.0]
  def change
    remove_column :stp_dprs, :date, :string
    
  end
end
