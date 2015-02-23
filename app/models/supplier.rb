class Supplier < ActiveRecord::Base
	include PublicActivity::Model
	tracked owner: ->(controller, model) { controller && controller.current_user }
	has_and_belongs_to_many :materials
	
end
