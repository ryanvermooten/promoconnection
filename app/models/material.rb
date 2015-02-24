class Material < ActiveRecord::Base
	include PublicActivity::Model
	tracked owner: ->(controller, model) { controller && controller.current_user } 
	has_and_belongs_to_many :templates
	# has_and_belongs_to_many :suppliers
  has_many :materials_suppliers
  has_many :suppliers, :through => :materials_suppliers
	
  accepts_nested_attributes_for :materials_suppliers, :allow_destroy => true
end