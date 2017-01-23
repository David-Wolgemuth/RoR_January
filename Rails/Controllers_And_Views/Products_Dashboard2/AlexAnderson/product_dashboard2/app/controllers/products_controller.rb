class ProductsController < ApplicationController
  def index
    @products = Product.all
    render '/products/index'
  end

  def new
    @categories = Category.all
    render 'new'
  end

  def create
    category = Category.find(params[:category])
    @product =  Product.create( name: params[:name], description: params[:description], pricing: params[:price],:category => category)
    @errors = @product.errors.messages
    if @errors.length > 0
      render '/product/new'
    else
      redirect_to '/products'
    end
  end

  def show
    @product = Product.find(params[:id])
    comment = Comment.find(params[:id])
    render 'show'
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    render 'edit'
  end

  def update
    category = Category.find(params[:category])
    @product = Product.update(params[:id], :name => params[:name], :description => params[:description], :pricing => params[:price], :category => category)
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

  def comments
    @comments = Comment.all
    render 'comments'
  end

end
