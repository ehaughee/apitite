class SessionsController < ApplicationController
  def new
    session[:return_to] ||= root_url
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Successfully logged in"
    else
      redirect_to "/login", alert: "Invalid username or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Successfully logged out"
  end
end
