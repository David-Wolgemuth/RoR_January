class SurveyController < ApplicationController
  def index
    if !session[:total]
      session[:total] = 0
    end
  end

  def send_data
    session[:total] = session[:total] + 1

    session[:data] = params[:survey]

    flash[:success] = "You submitted the survey. It has been submitted #{session[:total]} times"

    redirect_to "/survey/result"
  end

  def result
    @message = flash[:success]
    @form_data = session[:data]
  end
end
