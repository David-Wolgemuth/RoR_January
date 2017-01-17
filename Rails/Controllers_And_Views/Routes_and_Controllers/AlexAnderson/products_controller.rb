class ProductsController < ApplicationController
  def index
    # @products = Product.all
    # puts "What do you want me to say??"
    render text: "What do you want me to say??"
  end
  def create
    @product = Product.create( name: params[:name], description: params[:description])
    redirect_to '/products/index'
  end
  def hello
    # puts "hello"
    render text: 'Hello CodingDojo!'
  end
  def sayhello
    render text: 'Saying Hello!'
  end
  def sayhellojoe
    render text: 'Saying Hello Joe!'
  end
  def sayhellomichael
    redirect_to '/say/hello/joe'
  end

  def times
    if(!session[:count])
      session[:count] = 0
    else
      session[:count] +=1
    end
    # render text: 'You have visited this page # times'
    render '/products/times'
  end
  def reset
    session[:count] = 0
    render 'products/reset'
  end
end
