class SurveysController < ApplicationController

  def index
    render 'surveys/index'
  end

  def submit
    @name = params[:name]
    @location = params[:location]
    @language = params[:language]
    @comment = params[:comment]
    if(!session[:count])
      session[:counter] = 0
    end
    session[:counter] = session[:counter] + 1
    flash[:sucess] = "Thanks for submitting this form! You have submitted this form ",session[:counter],"times"
    render 'show'
  end
end
