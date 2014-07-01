class SessionController < ApplicationController
  def new
    #raise params.inspect
  end

  def create
    user = User.find_by(:username => params[:username])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:notice] = "Invalid login. Please try again."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end