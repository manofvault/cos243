class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:success] = "#{@user.username} logged on."
      redirect_to @user
    else
      flash.now[:danger] = "Invalid username or password"
      render 'new'
    end
  end
  
  def destroy
  end
end