class OrderProduct < ApplicationRecord
    belongs_to :order
    belongs_to :product
  
    validates :quantity, presence: true
    validates :box, inclusion: { in: [true, false] }
    validates :product_id, uniqueness: { scope: :order_id }
  end