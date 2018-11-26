class Order < ApplicationRecord
  belongs_to :user
  has_many :lists
  has_many :items, through: :list
end
