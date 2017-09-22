class AddRangeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :range, :integer
  end
end
