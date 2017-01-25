class SessionController < ApplicationController
  def index
    render 'index'
  end
  def login
    @user = User.find_by_email(params[:email])
   if @user && @user.authenticate(params[:password])
     session[:user_id] = @user.id
     redirect_to "/users/#{@user.id}"
   else
     flash[:errors] = ["Invalid combination"]
     redirect_to '/sessions/new'
   end
  end
 end
