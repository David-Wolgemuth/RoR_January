class SurveysController < ApplicationController
  def index
    render 'index'
  end

  def create
    if ! session[:count]
      session[:count] = 0
    end
    session[:count]+=1
    flash[:notice] = "Thanks for submitting this form. You have submitted this form #{session['count']} times."
    session[:survey] = {name: params[:name], location: params[:location], language: params[:language], comment: params[:comment]}
    puts session[:survey]
    redirect_to '/show'
  end

  def show
    render 'show'
  end
end
