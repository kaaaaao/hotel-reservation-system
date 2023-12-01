class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]
  
  def new
  
  end

  def create
    loginname = params[:loginname]
    password = params[:password]

    user = User.find_by(loginname: params[:loginname])

    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to bookings_url, notice: "You have been successfully logged in."
    else
      redirect_to login_url, alert: "Invalid loginname or password."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to bookings_url, notice: "You have been successfully logged out."
  end
end
