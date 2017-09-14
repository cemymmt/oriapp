class RemoveStudentIdIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :student_id_id, :string
  end
end
