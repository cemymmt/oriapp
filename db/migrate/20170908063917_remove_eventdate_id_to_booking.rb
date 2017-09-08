class RemoveEventdateIdToBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :eventdate_id, :string
  end
end
