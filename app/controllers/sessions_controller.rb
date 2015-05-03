class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    logger.info auth.to_yaml
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
      User.create_with_omniauth(auth)
    session[:user_id] = user.id
    if session[:user_type] == 'rider'
      redirect_to find_a_ride_path, notice: 'Signed in'
    else
      redirect_to offer_a_ride_path, notice: 'Signed in'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
