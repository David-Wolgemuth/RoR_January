class TodoController < ApplicationController
  def create_todo
    user = User.find(session[:user_id])
    user.lists.create(item: params[:item])

    redirect_to '/home'
  end

  def delete
    @list = List.find(params[:id]).destroy
    redirect_to '/home'
  end
  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
