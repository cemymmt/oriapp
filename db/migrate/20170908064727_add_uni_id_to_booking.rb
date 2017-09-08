class AddUniIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :Uni_id, :integer
  end
end
