class AddTimeToEventdetails < ActiveRecord::Migration[5.0]
  def change
    add_column :eventdetails, :time, :string
  end
end
