class Product < ApplicationRecord
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :images
  # def images 
  #   Image.where(product_id: self.id)
  # end

  has_many :orders
  has_many :product_categories

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
