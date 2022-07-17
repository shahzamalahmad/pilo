class CreateOperatorNames < ActiveRecord::Migration[7.0]
  def change
    create_table :operator_names do |t|

      t.timestamps
    end
  end
end
