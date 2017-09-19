class AddSetToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :set, :text
  end
end
