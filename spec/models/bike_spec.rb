require "spec_helper"
require "rails_helper"

describe "Bike" do

  before :each do
    Shop.destroy_all
    Bike.destroy_all
    Buyer.destroy_all

    Shop.create!(id: 1, name: "Salvagetti", location: "Highlands")
    Shop.create!(id: 2, name: "Turin", location: "Golden Triangle")
    Shop.create!(id: 3, name: "Campus Cycles", location: "Lakewood")
    Bike.create!(id: 1, name: "Z5", brand: "Felt", shop_id: 2, buyer_id: 2)
    Bike.create!(id: 2, name: "CAAD10", brand: "Cannondale", shop_id: 3, buyer_id: 3)
    Bike.create!(id: 3, name: "Allez", brand: "Specialized", shop_id: 2, buyer_id: 1)
    Bike.create!(id: 4, name: "Pista", brand: "Bianchi", shop_id: 1, buyer_id: 3)
    Bike.create!(id: 5, name: "Breed", brand: "Felt", shop_id: 2, buyer_id: 1)
    Bike.create!(id: 6, name: "Cross-Check", brand: "Surly", shop_id: 1, buyer_id: 1)
    Buyer.create!(id: 1, first_name: "John", last_name: "Smith", favorite_brand: "Felt")
    Buyer.create!(id: 2, first_name: "Mary", last_name: "Jones", favorite_brand: "Specialized")
    Buyer.create!(id: 3, first_name: "Mark", last_name: "Johnson", favorite_brand: "Cannondale")
  end

  it "returns itself" do
    bike = Bike.find_by(name: "Z5")
    expected_bike = Bike.new(
      id: 1,
      name: "Z5",
      brand: "Felt",
      shop_id: 2,
      buyer_id: 2
    )

    expect(bike).to eq(expected_bike)
  end

  it "returns its buyer" do
    bike = Bike.find_by(name: "Allez")

    expect(bike.buyer.first_name).to eq("John")
  end

  it "returns its biggest fan" do
    bike = Bike.find_by(name: "CAAD10")

    expect(bike.favorited_by).to eq("Mark Johnson")
  end
end