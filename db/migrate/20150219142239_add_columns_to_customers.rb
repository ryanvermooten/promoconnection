class AddColumnsToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :active, :boolean
  	add_column :customers, :secondary_contact, :string
  	add_column :customers, :bill_to, :string
  	add_column :customers, :phone_alt, :integer
  	remove_column :customers, :contact_person
  	add_column :customers, :fax, :integer
  	#add_column :customers, :title, :string
  	add_column :customers, :first_name, :string
  	add_column :customers, :last_name, :string
  	add_column :customers, :title, :string
  	add_column :customers, :street_address,  :string
  	add_column :customers, :city, :string
  	add_column :customers, :county, :string
  	add_column :customers, :post_code, :integer
  	add_column :customers, :vat_country, :string
  	add_column :customers, :vat_number, :integer
  	add_column :customers,  :user_id, :integer
  	add_column :customers, :terms, :string
  	add_column :customers, :credit_limit, :integer

  end
end
