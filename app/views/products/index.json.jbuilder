json.product @products do |product|
  json.extract! product, :id, :title, :artist, :price, :image, :avatar
end