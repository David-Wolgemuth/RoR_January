class UsersController < ApplicationController
  def index
    @users = User.all
    # puts @users.second.first_name
    render 'index'
  end
  def new
    render 'new'
  end
  def create
    @user =  User.create( first_name: params[:first_name], last_name: params[:last_name], email_address: params[:email], password: params[:password])
    @errors = @user.errors.messages
    if @errors.length > 0
      render '/users/new'
    else
      redirect_to '/users'
    end
  end
end
