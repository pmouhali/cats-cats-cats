class Item < ApplicationRecord
  has_many :lists
  has_many :orders, through: :list
end
