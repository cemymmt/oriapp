class AddFuriganaToUni < ActiveRecord::Migration[5.0]
  def change
    add_column :unis, :furigana, :string
  end
end
