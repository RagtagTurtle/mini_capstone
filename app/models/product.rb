class Product < ApplicationRecord

  def supplier
    Supplier.find_by(id: self.supplier_id)
  end

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
