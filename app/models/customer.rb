class Customer < ActiveRecord::Base
	include PublicActivity::Model
	tracked
	has_many :orders
end
