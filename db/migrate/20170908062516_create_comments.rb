class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.integer :student_id
      t.text :text
      t.string :name
      t.datetime :date
      t.timestamps
    end
  end
end
