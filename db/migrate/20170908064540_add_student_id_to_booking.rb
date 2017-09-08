class AddStudentIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :Student_id, :integer
  end
end
