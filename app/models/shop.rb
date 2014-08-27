class Shop < ActiveRecord::Base
  has_many :bikes

  def bike_names
    self.bikes.map { |bike| bike.name }
  end

  def buyers
    self.bikes.map { |bike| bike.buyer.first_name }
  end
end


