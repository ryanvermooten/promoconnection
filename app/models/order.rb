class Order < ActiveRecord::Base
	include PublicActivity::Model
	tracked 
	has_and_belongs_to_many :users
	belongs_to :customer
	has_and_belongs_to_many :templates
	mount_uploader :image, ImageUploader
	

	def due_at_string
		due_at.to_s(:db)
	end

	def due_at_string=(due_at_str)
		self.due_at = Time.parse(due_at_str)
	end
end
