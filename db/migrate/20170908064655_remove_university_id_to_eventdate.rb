class RemoveUniversityIdToEventdate < ActiveRecord::Migration[5.0]
  def change
    remove_column :eventdates, :university_id, :string
  end
end
