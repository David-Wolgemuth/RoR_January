class MainController < ApplicationController
  def index
      redirect_to '/login' unless session[:user_id]
      @items = Item.where(user_id:session[:user_id])
      @name = User.find(session[:user_id]).name
  end

  def login

  end
  def sign_in
      #if email matches User.find(email) and pasword matches password -> session[User Id] = User.find().id
      login_email = params[:email]
      login_password = params[:password]
      user = User.find_by(email:login_email)
      if user && login_password == user.password
          session[:user_id] = user.id
          redirect_to '/'
      else
          puts "THAT EMAIL IS INVALID OR PASSWORD IS INCORRECT"
          redirect_to '/login'
      end
  end
  def register
  end
  def new_item
      Item.create content:params[:content], checked:false, user:User.find(session[:user_id])
      redirect_to '/'
  end
  def new_user
      puts "THIS IS THE PARAMS, #{params}"
      User.create email:params[:email], name:params[:name], password:params[:init_pass]
      redirect_to '/'
  end
end
