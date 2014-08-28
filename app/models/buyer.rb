class Buyer < ActiveRecord::Base
  has_many :bikes

  def shops_without_favorite
    shop_where_it_was_bought = Bike.where(brand: self.favorite_brand).first.shop_id
    other_shops = Shop.where("id != ?", shop_where_it_was_bought)
    other_shops.map { |shop| shop.name}
  end

end