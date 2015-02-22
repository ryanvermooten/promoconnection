class Customer < ActiveRecord::Base
	include PublicActivity::Model
	tracked
	has_many :orders
	belongs_to :payment_option
	accepts_nested_attributes_for :payment_option
	has_many :contacts
	accepts_nested_attributes_for :contacts
	attr_writer :current_step


	def current_step
		@current_step || steps.first
	end

	def next_step
		self.current_step = steps[steps.index(current_step)+1]
	end

	def previous_step
  		self.current_step = steps[steps.index(current_step)-1]
	end	

	def steps
		%w[company_information contact_person payment_options]
	end
end
