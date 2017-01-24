class SecretsController < ApplicationController
  def create
    secret = Secret.create(content: params[:content])
    redirect_to '/show_secret'
  end

  def update
  end

  def all_secrets
    @secrets = Secret.all
    @users = User.all
    render 'secrets'
  end

  def delete
    @secret = Secret.find(params[:id]).destroy
    redirect_to '/show_secret'
  end

  def show_secret
    user = User.find(session[:user_id])
    user.secrets.create(content: params[:add_secret])
    redirect_to '/show_secret'
  end
  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
