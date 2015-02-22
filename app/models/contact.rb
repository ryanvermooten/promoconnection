class Contact < ActiveRecord::Base
	has_and_belongs_to_many :customers, through: :Contacts_Customers
end