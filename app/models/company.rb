class Company < ApplicationRecord
  has_many :products
  has_many :dicounts
  has_many :eventdates
end
