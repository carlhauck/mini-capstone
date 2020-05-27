class Api::ProductsController < ApplicationController
  
  def see_all_products
    @products = Product.all
    render 'all_products.json.jb'
  end
  
  def see_fly_swatter
    @product = Product.find_by(name: "fly swatter")
    render 'fly_swatter.json.jb'
  end
  
  def see_newest_product
    @product = Product.last
    render 'newest_product.json.jb'
  end

end
