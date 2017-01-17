class MessagesController < ApplicationController
  def index
    render json: "What do you want me to say??"
  end

  def say
  end

  def hello
  end
  def michael
    redirect_to '/say/hello/joe'
  end
  def visit_counter
    if session[:counter].nil?
      session[:counter] =0
    end
    session[:counter] += 1
  end
  def times
    # @counter

    render :text => "#{session[:counter]}"
    # count = @count
    # session[count] = @count += 1
  end
end
