class Uni < ApplicationRecord
  has_many :discounts
  has_many :eventdates
  has_many :eventdetails
  has_many :students
  scope :incremental_search, -> (name){ where('name LIKE(?)',"%#{name}%") }
end
