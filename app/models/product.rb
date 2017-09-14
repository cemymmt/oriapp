class Product < ApplicationRecord
  belongs_to :company
  has_many :bookings
  has_many :comments
  has_many :sample_images
  has_many :product_images
  has_many :students, through: :favorites
end
