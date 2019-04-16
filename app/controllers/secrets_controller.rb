class SecretsController < ApplicationController

  before_action :login_check

  def show

  end


  def login_check
    redirect_to new_session_path if current_user == nil
  end
end
