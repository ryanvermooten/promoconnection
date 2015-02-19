class Supplier < ActiveRecord::Base
	include PublicActivity::Model
	tracked 
	has_and_belongs_to_many :materials
	
end
