class UsersController < ApplicationController
  def new
    render 'new'
  end

  def create
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    @string = (0...10).map { o[rand(o.length)] }.join
    # @username = (0...8).map { (65 + rand(26)).chr }.join
    puts @string
    @user = User.create( name: @string)
    redirect_to '/users'
  end

  def show
    id = params[:id]
    render json: User.find(id)
  end

  def edit
    id = params[:id]
    # session[:name]  User.find(id).select("name")
    session[:name] = User.find(id).name
    render 'edit'
  end

  def total
    session[:total] = User.count
    render 'total'
  end

  def index
    render json: User.all
  end
end
