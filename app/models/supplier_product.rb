class SupplierProduct < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
  
  validates :in_stock, presence: :true
  validates :product, uniqueness: { scope: :supplier,
    message: 'has it already' }

  delegate :name, to: :product, prefix: true
  delegate :name, to: :supplier, prefix: true
end
