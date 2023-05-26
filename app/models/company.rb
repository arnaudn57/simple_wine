class Company < ApplicationRecord
  belongs_to :user
  has_many :products
  has_many :orders
  # accepts_nested_attributes_for :orders
end
