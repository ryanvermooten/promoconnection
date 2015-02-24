class Supplier < ActiveRecord::Base
	include PublicActivity::Model
	tracked owner: ->(controller, model) { controller && controller.current_user }
	#has_and_belongs_to_many :materials
  has_many :materials_suppliers
  has_many :materials, :through => :materials_suppliers 
	
  accepts_nested_attributes_for :materials_suppliers, :allow_destroy => true, reject_if: proc { |attributes| attributes['price'].blank? }
end
