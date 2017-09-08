class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :eventdate_id
      t.string :product_id
      t.string :student_id
      t.text :text
      t.timestamps
    end
  end
end
