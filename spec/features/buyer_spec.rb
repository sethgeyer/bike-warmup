require "spec_helper"
require "rails_helper"

describe "Buyer" do
  it "returns itself" do
    buyer = Buyer.find_by(first_name: "Mary")
    expected_buyer = Buyer.new(
      id: 2,
      first_name: "Mary",
      last_name: "Jones",
      favorite_brand: "Specialized"
    )

    expect(buyer).to eq(expected_buyer)
  end

  it "returns buyer's favorite brand" do
    buyer = Buyer.find_by(first_name: "John")

    expect(buyer.favorite_brand).to eq("Felt")
  end

  it "returns shops that don't carry their favorite brand" do
    buyer = Buyer.find_by(favorite_brand: "Cannondale")

    expect(buyer.shops_without_favorite).to match_array(["Salvagetti", "Turin"])
  end
end