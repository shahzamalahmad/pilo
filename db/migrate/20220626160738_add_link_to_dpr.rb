class AddLinkToDpr < ActiveRecord::Migration[7.0]
  def change
    add_column :dprs, :link, :string
  end
end
