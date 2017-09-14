class AddStudentIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :student_id, :integer
  end
end
