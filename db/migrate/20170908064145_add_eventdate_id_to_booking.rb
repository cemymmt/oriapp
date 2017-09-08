class AddEventdateIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :eventdate_id, :integer
  end
end
