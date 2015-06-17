class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal(price)
    quantity * price
  end

  def calculate_tax(price)
    quantity * price * 0.09
  end

  def calculate_total(price)
    quantity * price * 1.09
  end
end
