class Uni < ApplicationRecord
  has_many :discounts
  has_many :eventdates
  has_many :eventdetails
end
