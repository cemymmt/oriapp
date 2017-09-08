class CreateSampleImages < ActiveRecord::Migration[5.0]
  def change
    create_table :sample_images do |t|
      t.integer :product_id
      t.string :image
      t.text :text
      t.timestamps
    end
  end
end
