class Bike < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :shop

  def favorited_by
   buyer = Buyer.where(favorite_brand: self.brand).first
   "#{buyer.first_name} #{buyer.last_name}"
  end

end