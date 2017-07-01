class Menu < ApplicationRecord
  has_many :orders
  belongs_to :store
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :image, ImageUploader
end
