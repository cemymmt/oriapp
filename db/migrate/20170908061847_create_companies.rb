class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :email
      t.integer :phone
      t.text :text
      t.timestamps
    end
  end
end
