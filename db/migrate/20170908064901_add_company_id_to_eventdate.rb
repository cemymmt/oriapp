class AddCompanyIdToEventdate < ActiveRecord::Migration[5.0]
  def change
    add_column :eventdates, :company_id, :integer
  end
end
