class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :student_id, null:false
      t.references :product_id, null:false

      t.timestamps null:false
    end
  end
end
