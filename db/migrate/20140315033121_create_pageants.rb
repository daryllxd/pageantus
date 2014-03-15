class CreatePageants < ActiveRecord::Migration
  def change
    create_table :pageants do |t|
      t.string :name

      t.timestamps
    end
  end
end
