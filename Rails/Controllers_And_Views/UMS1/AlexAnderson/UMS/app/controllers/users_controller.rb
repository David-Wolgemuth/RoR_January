class UsersController < ApplicationController
  def index
    @users = User.all
    # puts @users.second.first_name
    render 'index'
  end
end
