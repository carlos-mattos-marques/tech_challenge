class Supplier < ApplicationRecord
  include Locatable

  has_many :supplier_products
  has_many :products, through: :supplier_products

  validates :name, presence: true, uniqueness: true
end
