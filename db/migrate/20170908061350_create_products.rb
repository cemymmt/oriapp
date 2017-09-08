class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.integer :company_id
      t.text :text
      t.text :product_image
      t.text :sample_image
      t.string :color
      t.string :size
      t.timestamps
    end
  end
end
