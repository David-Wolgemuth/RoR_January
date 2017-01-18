class UsersController < ApplicationController
  def index
    @users=User.all
    render 'index'
  end
  def new
    render "new"
  end

  def create
    @user = User.create(first_name: params[:first_name],last_name: params[:last_name], email_address: params[:email_address], password: params[:password])
    @errors = @user.errors.messages
    if @errors.length >0
      render 'new'
    else
    redirect_to '/index'
  end
  end
  def show
    @user = User.find (params[:id])
    render 'show'
  end
  def edit
    @user = User.find (params[:id])
    render 'edit'
  end
  def update
    @user = User.update(first_name: params[:first_name],last_name: params[:last_name], email_address: params[:email_address], password: params[:password])
    @errors = @user.errors.messages
    if @errors.length >0
      render 'params[:id]/edit'
    else
    redirect_to '/index'
  end
end
  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to '/index'
  end
end
