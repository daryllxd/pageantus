class AddColumnsToPageant < ActiveRecord::Migration
  def change
    add_column :pageants, :client, :string
    add_column :pageants, :location, :string
    add_column :pageants, :status, :string
  end
end
