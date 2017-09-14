class AddStudentIdToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :student_id, :integer
  end
end
