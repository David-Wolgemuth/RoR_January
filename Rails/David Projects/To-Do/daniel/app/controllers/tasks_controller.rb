class TasksController < ApplicationController
  
  before_filter :authorize

  def index
    @the_task = Task.new
    @all_tasks = Task.all
    @user_id = session[:user_id]
  end
  
  def create
    @new_task = Task.create(text: params[:task][:text], user: User.find(session[:user_id]))
    redirect_to '/tasks', :notice => "You added a task!"
  end

  def edit
    @the_task = Task.find (params[:id])
  end


  def destroy
    Task.destroy params[:id]
    redirect_to :back, :notice => "Task has been deleted"

  end

end