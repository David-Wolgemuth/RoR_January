class UsersController < ApplicationController
  def index
  end

  def login
    # find person in DB based on email and password, session that user, and
    redirect_to 'users/:id'
  end

  def show

  end

  def new
  end

  def create
  end

  def update
  end

  def remove_session
  end
end
