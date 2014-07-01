class SessionController < ApplicationController
  def new
    #raise params.inspect
  end

  def create
    user = User.find_by(:username => params[:username])
    # raise params.inspect?
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to location_search_path
    else
      flash[:notice] = "Invalid login. Please try again."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private 
  def check_if_logged_in
    redirect_to(new_user_path) if @current_user.nil?
  end
end