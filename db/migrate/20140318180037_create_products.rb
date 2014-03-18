class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :artist
      t.integer :price
      t.string :image
      t.string :avatar

      t.timestamps
    end
  end
end
