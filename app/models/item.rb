class Item < ApplicationRecord
  has_and_belongs_to_many :carts

  has_many :lists
  has_many :orders, through: :list
end
