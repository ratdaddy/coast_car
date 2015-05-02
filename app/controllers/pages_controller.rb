class PagesController < ApplicationController
  def home
  end

  def register
    session[:user_type] = params[:user_type]
  end

  def add_trips
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
