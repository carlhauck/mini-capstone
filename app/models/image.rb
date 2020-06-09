class Image < ApplicationRecord
  validates :url, format: { without: /\s/ } 
  belongs_to :product
end
