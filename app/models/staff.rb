class Staff < ApplicationRecord
  has_many :orders
  has_many :salaries
end
