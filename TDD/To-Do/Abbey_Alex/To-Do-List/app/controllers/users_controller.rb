class UsersController < ApplicationController
  def loginpage
    # user = User.find_by_email(params[:email])
    render 'index'
  end

  def loginuser
    # find person in DB based on email and password, session that user, and
    @user = User.find_by_email params[:email]
    # puts User.email
    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
    end
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find_by_id session[:id]
  end

  def new
    # registration form pops up
    render 'new'
  end

  def create
    # registration form submission routes here
    puts params
    @user = User.create(name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation])
    redirect_to '/index'
  end

  def update
    user = User.find_by_id session[:id]
    @task = Task.create(item:params[:item], user:user)
  end

  def task
    user = User.find_by_id session[:id]
    @task = Task.create(item:params[:item], user:user)
    redirect_to "/users/#{session[:id]}"
  end

  def check
    puts params[:checked]
    task = Task.find_by_id params[:task_id]
    task.checked = true
    task.save
    redirect_to "/users/#{session[:id]}"
  end

  def remove_session
    reset_session
    redirect_to '/index'
  end
end
