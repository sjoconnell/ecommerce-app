class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images

def sale_message
  discount_message = ""
  discount_message += "Discount Item!" if price.to_i < 10
  discount_message += "Sale Item!" if price.to_i > 10
  discount_message
end

def taxify
  price.to_f * 0.09
end

def total
  price.to_f * 1.09
end

  
end
