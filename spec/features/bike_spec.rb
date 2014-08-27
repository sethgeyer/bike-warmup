require "spec_helper"
require "rails_helper"

describe "Bike" do
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