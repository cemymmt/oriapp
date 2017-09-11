class Eventdate < ApplicationRecord
  belongs_to :uni
  belongs_to :company
  has_many :bookings
end
