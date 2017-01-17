class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    name = ['Josh', 'Mack', 'Norah', 'Chris', 'Abbey', 'Alina', 'Jared', 'Sarah', 'Jason', 'Travis', 'Sheena', 'Craig']
    @new_user = name.sample
  end

  def create
    @add_user = User.create(name:params[:name])
    redirect_to "/users"
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @update = User.find(params[:id])
  end

  def edit_name
    # @edit_user = User.update((params[:id]), name:params[:change])
    puts "This is in the name edit controller"
    redirect_to "/"
  end

  def total
    puts "\n\n\n\n\nThis is in the total method\n\n\n\n\n\n\n"
    # render "/users/total"
  end
end
