class SupplierProductShipment < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
  belongs_to :shipment
  
  validates :product, uniqueness: { scope: [:supplier, :shipment],
    message: 'has it already' }
  validates :amount, presence: :true, numericality: { only_integer: true, greater_than: 0 }

  delegate :name, to: :product, prefix: true
  delegate :name, to: :supplier, prefix: true
end
