class Booking < ApplicationRecord
  belongs_to :eventdate
  belongs_to :product
  belongs_to :student
end
