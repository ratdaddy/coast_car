class PagesController < ApplicationController
  def home
  end

  def register
    session[:user_type] = params[:user_type]
  end

  def add_trips
    @user = current_user
  end

  def submit_trip
    current_user.update(user_params)
    redirect_to create_driver_profile_path
  end

  def create_driver_profile
    @user = current_user
  end

  def new_driver
    current_user.update(user_params)
    redirect_to thanks_path
  end

  def thanks
  end

  def search_trips
    @user = current_user
  end

  def rider_profile
    current_user.update(user_params)
    redirect_to driver_contact_path
  end

  def driver_contact
  end

  def pay
  end
  
  private
  def user_params
    params.require(:user).permit(:name)
  end
end
