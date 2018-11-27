class Item < ApplicationRecord
  has_and_belongs_to_many :carts
  has_and_belongs_to_many :orders
  belongs_to :category
end
