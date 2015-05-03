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
    params.require(:user).permit(:name,
                                 :birthdate,
                                 :gender,
                                 :drivers_license_state,
                                 :drivers_insurance_company,
                                 :rider_restriction_allow_music,
                                 :rider_restriction_non_smoking,
                                 :rider_restriction_allow_dogs,
                                 :rider_restriction_allow_cats,
                                 :rider_restriction_allow_kids,
                                 :rider_restriction_allow_food,
                                 :rider_default_number_of_seats,
                                 :rider_preference_music_audio,
                                 :rider_preference_smoking,
                                 :rider_preference_pets,
                                 :rider_preference_allergies,
                                 :rider_preference_food,
                                 :rider_preference_children,
                                 :rider_preference_conversation
                                 )
  end
end
