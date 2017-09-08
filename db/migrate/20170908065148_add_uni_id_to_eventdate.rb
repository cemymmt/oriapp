class AddUniIdToEventdate < ActiveRecord::Migration[5.0]
  def change
    add_column :eventdates, :uni_id, :integer
  end
end
