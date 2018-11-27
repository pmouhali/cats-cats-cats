class Cart < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :items
	has_many :orders
end
