class SessionsController < ApplicationController
  def new
    session[:return_to] ||= root_url
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully logged in"
      flash[:type]  = "alert-success"
      redirect_to root_url
    else
      flash[:notice] = "Invalid username or password"
      flash[:type]  = "alert-danger"
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out"
    flash[:type]  = "alert-success"
    redirect_to root_url
  end
end
