require "spec_helper"
require "rails_helper"

describe "Shop" do
  it "returns itself" do
    shop = Shop.find_by(:name => "Turin")
    expected_shop = Shop.new(
      id: 2,
      name: "Turin",
      location: "Golden Triangle"
    )
    expect(shop).to eq(expected_shop)
  end

  it "returns its location" do
    shop = Shop.find_by(:name => "Campus Cycles")
    expect(shop.location).to eq("Lakewood")
  end
  
  it "returns the bikes it's sold" do
    shop = Shop.find_by(:name => "Salvagetti")

    expect(shop.bike_names).to match_array(["Pista", "Cross-Check"])
  end

  it "returns everyone who bought bikes from a shop" do
    shop = Shop.find_by(:name => "Salvagetti")

    expect(shop.buyers).to match_array(["Mark", "John"])
  end
end