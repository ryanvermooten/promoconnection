class Material < ActiveRecord::Base
	has_and_belongs_to_many :templates
	has_and_belongs_to_many :suppliers
end