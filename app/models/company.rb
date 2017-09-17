class Company < ApplicationRecord
  has_many :products
  has_many :dicounts
  has_many :eventdates

before_save :geocode_full_address

  def geocode_full_address
    coords = Geocoder.coordinates(
      self.prefecture + self.city + self.address # 県名 + 市町村名 + 丁目番地
    )
    self.latitude = coords[0]
    self.longitude = coords[1]
  end
end
