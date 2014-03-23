class AddPopularAtToProducts < ActiveRecord::Migration
  def change
    add_column :products, :popular_at, :datetime
  end
end
