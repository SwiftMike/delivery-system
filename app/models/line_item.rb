class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  validates :quantity, presence: true
  def total_price
    product.price * quantity
  end
end
