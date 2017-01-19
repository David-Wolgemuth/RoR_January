class ProductsController < ApplicationController
  def index
    @products = Product.all
    render '/products/index'
  end

  def show
  end

  def new
    render 'new'
  end

  def edit
  end

  def create
    @product =  Product.create( name: params[:name], description: params[:description], pricing: params[:price])
    @errors = @product.errors.messages
    if @errors.length > 0
      render '/product/new'
    else
      redirect_to '/products'
    end
  end

  def update
  end

  def destroy
  end
end
