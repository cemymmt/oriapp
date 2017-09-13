class RemoveTimeToEventdate < ActiveRecord::Migration[5.0]
  def change
    remove_column :eventdates, :time, :string
  end
end
