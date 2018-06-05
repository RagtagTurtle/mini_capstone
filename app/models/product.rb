class Product < ApplicationRecord
  belongs_to :supplier, optional: true

  has_many :images

  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..1000 }


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
