class Product < ActiveRecord::Base
  has_many :items
  has_many :carts, through: :items

  def self.display_popular_jams
      Product.where("popular_at is not null").order(popular_at: :desc).limit(3)
    end
end
