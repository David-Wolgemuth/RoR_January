class TasksController < ApplicationController

  def index
    @all_tasks = Task.all
  end

  def create
    params.permit
    @new_task = Task.new(params[:task].permit!)
    @new_task.save
    redirect_to '/tasks'
  end


end
