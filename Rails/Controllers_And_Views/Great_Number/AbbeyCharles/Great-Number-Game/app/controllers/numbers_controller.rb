class NumbersController < ApplicationController
  def index
    get_number if !session[:random].present?
  end

  def create
    flash[:message] = "You guessed the right number!"
    flash[:status] = false
    if params[:number].present?
      number = params[:number].to_i
      puts "\n\n\n\n\n\nThis is in the number comparison\n\n\n\n\n\n"
      if number > session[:random]
        flash[:message] = "That guess is too high."
      elsif number < session[:random]
        flash[:message] = "That guess is too low."
      else
        get_number
        flash[:status] = true
      end
    else
      flash[:message] = "Number, please!"
    end
    redirect_to '/index'
  end

  def get_number
    session[:random] = rand(1..100)
  end
end
