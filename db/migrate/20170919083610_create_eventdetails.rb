class CreateEventdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :eventdetails do |t|
      t.integer         :uni_id
      t.integer         :company_id
      t.string          :period
      t.string          :place
      t.timestamps
    end
  end
end
