class DropoperatorNamesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :operator_names do |t|
      t.string :operator_name, null: false
      t.timestamps null: false
    end
  end
end