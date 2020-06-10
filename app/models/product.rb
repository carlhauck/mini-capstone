class Product < ApplicationRecord

  validates :name, length: { in: 1..100 }, uniqueness: { case_sensitive: false }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 5..500 }

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  belongs_to :supplier
  has_many :images
  has_many :orders

end
