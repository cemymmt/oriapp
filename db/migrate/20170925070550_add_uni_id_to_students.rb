class AddUniIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :uni_id, :integer
  end
end
