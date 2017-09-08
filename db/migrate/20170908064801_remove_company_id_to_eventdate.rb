class RemoveCompanyIdToEventdate < ActiveRecord::Migration[5.0]
  def change
    remove_column :eventdates, :company_id, :string
  end
end
