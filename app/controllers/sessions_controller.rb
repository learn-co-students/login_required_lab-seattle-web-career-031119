class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to 'secrets#show'
    else
      redirect_to '/'
    end
  end

  def show
  end

  def destroy
    session.delete(:name)
  end

end
