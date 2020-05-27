Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_products" => "products#all_products"
    get "/fly_swatter" => "products#display_fly_swatter"
    get "/newest_product" => "products#display_newest_product"
  end
end
