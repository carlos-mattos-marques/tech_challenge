class Shipment < ApplicationRecord
  include Locatable

  belongs_to :order

  validates :order, presence: true
  validates :deadline, presence: true
end