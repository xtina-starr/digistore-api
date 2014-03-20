json.cart do
  json.id @cart.id
  json.items @cart.items.map {|item| item.id}
end