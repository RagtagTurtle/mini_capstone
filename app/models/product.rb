class Product < ApplicationRecord
  belongs_to :supplier, optional: true
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :images
  # def images 
  #   Image.where(product_id: self.id)
  # end

  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories



  def is_discounted?
    price < 200000.00
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
