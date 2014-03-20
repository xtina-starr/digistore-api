json.product do
  json.extract! @product, :id, :title, :artist, :price, :image, :avatar
end