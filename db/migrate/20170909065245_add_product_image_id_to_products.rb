class AddProductImageIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_image_id, :integer
  end
end
