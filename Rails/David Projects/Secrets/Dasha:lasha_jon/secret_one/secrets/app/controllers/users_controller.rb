class UsersController < ApplicationController

  def show
    @user = User.find(session[:user_id])
    render 'mysecrets'
  end

  def create
    user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirm])
    @errors = user.errors.messages
    if @errors.length > 0
      render 'register'
    else
      redirect_to '/login'
    end
  end

  def log_user
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to '/show_secret'
    else
      render 'login'
    end
  end

  def login
    render 'login'
  end

  def register
    render 'register'
  end

end
