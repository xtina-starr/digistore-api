class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :current_price
      t.integer :quantity
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
