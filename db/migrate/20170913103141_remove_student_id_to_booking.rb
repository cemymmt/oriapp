class RemoveStudentIdToBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :Student_id, :string
  end
end
