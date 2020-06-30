class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true, numericality: true
  validates :description, presence: true

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def category_names
    categories.map { |category| category.name }
  end

end
