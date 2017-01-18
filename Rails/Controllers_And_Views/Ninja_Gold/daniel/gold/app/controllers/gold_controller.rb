class GoldController < ApplicationController

  def index
    if !session[:total]
      session[:total] = 0
    end
    if !session[:log]
      session[:log] = []
    end
  end

  def create

    choice = params[:location]

    if choice == 'farm'
        newGold = Random.rand(10..21)
    elsif choice == 'house'
        newGold = Random.rand(2..6)
    elsif choice == 'cave'
        newGold = Random.rand(5..11)
    else choice == 'casino'
        newGold = Random.rand(-50..51)
    end

    session[:total] += newGold
    session[:message] = "You earned #{newGold} your total is #{session[:total]}"
    session[:log].push(session[:message])

    redirect_to action: 'index'
  end

  def reset
    session[:total] = 0
    session[:log] = []
    session[:message] = ""
    redirect_to action: 'index'
  end

end
