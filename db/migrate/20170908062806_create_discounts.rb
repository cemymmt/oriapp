class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.integer :company_id
      t.integer :university_id
      t.text :text
      t.integer :discount
      t.timestamps
    end
  end
end
