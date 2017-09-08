class RemoveProductIdToBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :product_id, :string
  end
end
