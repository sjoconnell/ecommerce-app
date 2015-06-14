class Product < ActiveRecord::Base
  has_many :orders
  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products

def sale_message
  discount_message = ""
  discount_message += "Discount Item!" if price.to_i < 10
  discount_message += "Sale Item!" if price.to_i > 10
  discount_message
end

def taxify
  price.to_f * 0.09
end

def total_number
  price.to_f * 1.09
end

  
end
