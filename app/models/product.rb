class Product < ApplicationRecord
  has_many :supplier_products
  has_many :suppliers, through: :supplier_products
  has_and_belongs_to_many :orders

  validates :name, presence: true, uniqueness: true
end
