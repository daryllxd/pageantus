class CreatePageants < ActiveRecord::Migration
  def change
    create_table :pageants do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
  end
end
