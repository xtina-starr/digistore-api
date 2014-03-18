json.item @items do |item|
  json.id item.id
  json.current_price item.current_price
  json.quantity item.quantity
  json.product item.product_id
  json.cart item.cart_id
end