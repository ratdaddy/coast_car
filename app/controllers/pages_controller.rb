class PagesController < ApplicationController
  def home
  end

  def register
    session[:user_type] = params[:user_type]
  end

  def add_trips
  end

  def search_trips
  end

  def pay
  end
end
