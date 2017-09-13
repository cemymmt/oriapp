class RemoveDateToEventdate < ActiveRecord::Migration[5.0]
  def change
    remove_column :eventdates, :date, :string
  end
end
