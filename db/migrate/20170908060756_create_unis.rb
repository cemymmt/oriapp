class CreateUnis < ActiveRecord::Migration[5.0]
  def change
    create_table :unis do |t|
      t.string :name
      t.integer :phone
      t.string :website

      t.timestamps
    end
  end
end
