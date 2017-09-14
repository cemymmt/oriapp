class RemoveProductIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :Product_id, :string
  end
end
