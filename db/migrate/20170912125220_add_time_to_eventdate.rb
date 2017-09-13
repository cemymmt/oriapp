class AddTimeToEventdate < ActiveRecord::Migration[5.0]
  def change
    add_column :eventdates, :time, :string
  end
end
