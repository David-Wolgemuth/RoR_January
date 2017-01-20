class TasksController < ApplicationController

  def index
    @the_task = Task.new
    @all_tasks = Task.all
  end

  def create
    params.permit
    @new_task = Task.new(params[:task].permit!)
    @new_task.save
    redirect_to '/tasks', :notice => "You added a task!"
  end

  def edit
    @the_task = Task.find (params[:id])
  end

  def update
    params.permit
    task = Task.find (params[:id])
    if task.update_attributes params[:task].permit!
      redirect_to tasks_path, :notice => "You have updated a task"
    else
      redirect_to :back, :notice => "You cannot update a blank task"
    end
  end

  def destroy
    Task.destroy params[:id]
    redirect_to :back, :notice => "Task has been deleted"

  end

end
