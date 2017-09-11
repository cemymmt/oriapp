class AddSampleImageIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :sample_image_id, :integer
  end
end
