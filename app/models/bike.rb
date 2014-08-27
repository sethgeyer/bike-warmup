class Bike < ActiveRecord::Base
  belongs_to :shop
  belongs_to :buyer

  def favorited_by
    "#{self.buyer.first_name} #{self.buyer.last_name}"
  end
end
