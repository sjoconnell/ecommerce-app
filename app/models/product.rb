class Product < ActiveRecord::Base
  has_many :carted_products
  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :description, presence: true

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
