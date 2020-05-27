class Api::ProductsController < ApplicationController
  
  def all_products
    @products = Product.all
    render 'all_products.json.jb'
  end
  
  def display_fly_swatter
    @product = Product.find_by(name: "fly swatter")
    render 'one_product.json.jb'
  end
  
  def display_newest_product
    @product = Product.last
    render 'one_product.json.jb'
  end

end
