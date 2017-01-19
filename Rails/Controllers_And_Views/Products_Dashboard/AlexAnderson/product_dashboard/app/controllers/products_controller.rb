class ProductsController < ApplicationController
  def index
    @products = Product.all
    render '/products/index'
  end

  def show
    @product = Product.find(params[:id])
    render 'show'
  end

  def new
    render 'new'
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit'
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
    @product = Product.update(params[:id], :name => params[:name], :description => params[:description], :pricing => params[:price])
    @errors = @product.errors.messages
    if @errors.length > 0
      render 'products/params[:id]/edit'
    else
      redirect_to '/products'
    end
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to '/products'
  end
end
