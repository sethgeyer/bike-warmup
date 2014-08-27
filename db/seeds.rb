Shop.destroy_all
Bike.destroy_all
Buyer.destroy_all

Shop.create!(
  name: "Salvagetti",
  location: "Highlands"
)

Shop.create!(
  name: "Turin",
  location: "Golden Triangle"
)

Shop.create!(
  name: "Campus Cycles",
  location: "Lakewood"
)

Bike.create!(
  name: "Z5",
  brand: "Felt",
  shop_id: 2,
  buyer_id: 2
)

Bike.create!(
  name: "CAAD10",
  brand: "Cannondale",
  shop_id: 3,
  buyer_id: 3
)

Bike.create!(
  name: "Allez",
  brand: "Specialized",
  shop_id: 2,
  buyer_id: 1
)

Bike.create!(
  name: "Pista",
  brand: "Bianchi",
  shop_id: 1,
  buyer_id: 3
)

Bike.create!(
  name: "Breed",
  brand: "Felt",
  shop_id: 2,
  buyer_id: 1
)

Bike.create!(
  name: "Cross-Check",
  brand: "Surly",
  shop_id: 1,
  buyer_id: 1
)

Buyer.create!(
  first_name: "John",
  last_name: "Smith",
  favorite_brand: "Felt"
)

Buyer.create!(
  first_name: "Mary",
  last_name: "Jones",
  favorite_brand: "Specialized"
)

Buyer.create!(
  first_name: "Mark",
  last_name: "Johnson",
  favorite_brand: "Cannondale"
)

