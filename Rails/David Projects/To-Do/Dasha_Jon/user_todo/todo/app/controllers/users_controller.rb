class UsersController < ApplicationController
  def home
    @user = User.find(session[:user_id])
    puts @item
    render 'home'
  end

  def register
    render 'create'
  end

  def login
    render 'login'
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:confirm_password])
    redirect_to '/login'
  end

  def login_user
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
    session[:user_id]= user.id
    redirect_to '/home'
  else
    redirect_to '/login'
  end
  end


end
