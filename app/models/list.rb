class List < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :item, optional: true
end
