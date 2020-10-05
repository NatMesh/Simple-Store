Rails.application.routes.draw do
  #Update the routes such that the Products controller's index action is trigger from a GET request to /products
  #(Load and display all products)
  get "/products", to: "products#index", as: "products" #products_path

  get "products/:id", to: "products#show", as: "product" #product_path
end
