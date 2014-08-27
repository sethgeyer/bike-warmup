class Buyer < ActiveRecord::Base
  has_many :bikes

  def shops_without_favorite
    bike = Bike.find_by(brand: self.favorite_brand)
    shops = Shop.all.to_a.select { |shop| bike.shop_id != shop.id }
    shops.map { |shop| shop.name }
  end
end
