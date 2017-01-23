class MainController < ApplicationController
  def index
      @items = Item.all
  end

  def login
  end

  def register
  end

  def new_user
        puts "THIS IS THE PARAMS, #{params}"
    #   User.create email:params[:email], name:params[:name], password:params[:init_pass]
        redirect_to '/'
  end
end
