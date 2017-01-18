class SurveysController < ApplicationController
  def index
    render 'surveys/index'
  end

  def submit
    @name = params[:name]
    @location = params[:location]
    @language = params[:language]
    @comment = params[:comment]

    render 'show'
  end
end
