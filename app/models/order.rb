class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  has_and_belongs_to_many :items
end
