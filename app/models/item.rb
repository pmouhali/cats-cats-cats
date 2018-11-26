class Item < ApplicationRecord
  has_many :carts
  has_many :lists
  has_many :orders, through: :list
end
