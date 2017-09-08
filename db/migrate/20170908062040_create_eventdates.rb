class CreateEventdates < ActiveRecord::Migration[5.0]
  def change
    create_table :eventdates do |t|
      t.string :university_id
      t.string :company_id
      t.datetime :date
      t.datetime :time
      t.text :text
      t.timestamps
    end
  end
end
