class SessionsController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, only:[:new, :create]


  def index

  end

  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to new_session_path
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end

  def login_check
    redirect_to new_session_path if current_user == nil
  end
end
