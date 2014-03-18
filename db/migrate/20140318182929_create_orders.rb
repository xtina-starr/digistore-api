class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :credit_card
      t.integer :cvv
      t.string :exp
      t.string :status

      t.timestamps
    end
  end
end
