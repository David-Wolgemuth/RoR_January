class NameController < ApplicationController

  def index
    render text: 'Hello Coding Dojo'

  end
  def create
    render text: "Hello Joe"
  end
  def new
    redirect_to '/say/hello/joe'
  end
  def show
    render text: 'What do you wnat me to say???'
  end
  def count
    if ! session[:count]
      session[:count]=0
    end
    session[:count]+=1
    puts session[:count]
    render 'times'

  end
  def destroy
    session[:count]=nil
    render 'destroy'
    # render text: 'Destroy the session'
  end
end
