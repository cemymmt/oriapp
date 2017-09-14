class AddProductIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :product_id, :integer
  end
end
