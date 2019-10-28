class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :contents
  has_one_attached :image
end
