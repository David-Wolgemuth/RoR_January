class NewController < ApplicationController
  def index
  end
  def say
    render 'say'
  end
  def hello
    render 'hello'
  end
  def michael
    redirect_to '/say/hello/joe'
  end
end
