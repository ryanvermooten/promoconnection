class AddColumnCompanyEmailToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :company_email, :string
  end
end
