class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :staff
  has_one :measurement
end
