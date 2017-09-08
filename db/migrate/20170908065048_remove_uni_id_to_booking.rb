class RemoveUniIdToBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :Uni_id, :string
  end
end
