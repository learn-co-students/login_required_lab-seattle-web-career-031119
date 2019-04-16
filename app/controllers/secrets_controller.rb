class SecretsController < ApplicationController
  before_action :require_login

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private
    def require_login
      redirect_to '/' unless session.include? :name
    end

end
