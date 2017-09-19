class AddGuraduationToUnis < ActiveRecord::Migration[5.0]
  def change
    add_column :unis, :graduation, :string
  end
end
