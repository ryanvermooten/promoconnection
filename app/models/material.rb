class Material < ActiveRecord::Base
	include PublicActivity::Model
	tracked 
	has_and_belongs_to_many :templates
	has_and_belongs_to_many :suppliers
	
end