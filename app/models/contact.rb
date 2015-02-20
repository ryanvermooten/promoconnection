class Contact < ActiveRecord::Base
	has_many :customers
end