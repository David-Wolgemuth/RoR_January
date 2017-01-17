class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end
  def create
    @product = Product.create(name: params[:name], description: params[:description])
    puts @product
    redirect_to '/products/index'
    render text:"Created a new product"
  end
end
