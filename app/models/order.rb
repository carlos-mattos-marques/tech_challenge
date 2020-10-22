class Order < ApplicationRecord
  include Locatable

  has_and_belongs_to_many :products

  # validates :deadline, presence: true
end
