class RemoveSampleImageToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :sample_image, :string
  end
end
