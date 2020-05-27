Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#see_all_products"
    get "/fly_swatter" => "products#see_fly_swatter"
    get "/newest_product" => "products#see_newest_product"
  end
end
