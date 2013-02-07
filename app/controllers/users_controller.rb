class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:flash] = "Successfully registered!"
      session[:type]  = "alert-success"
      redirect_to destination
    else
      render :new
    end
  end

  def login
    @user = User.find_by_uname(params[:email])
    if @user.password == params[:password]
    else
      redirect_to root_url
    end
  end

  def show
    @current_user
  end

  private
    def user_params
        params.required(:user).permit(:username, :password)
    end
end
