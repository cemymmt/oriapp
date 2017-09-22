class AddPhotoToProductImages < ActiveRecord::Migration[5.0]
  def change
    add_column :product_images, :photo, :string
  end
end
