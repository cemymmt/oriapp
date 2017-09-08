class AddProductIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :product_id, :integer
  end
end
