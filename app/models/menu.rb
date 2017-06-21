class Menu < ApplicationRecord
  has_many :orders
  belongs_to :stores
end
