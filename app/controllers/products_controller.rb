class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    #we can use the params to find the id for a specific movie
    @product = Product.find(params[:id])
  end
end
