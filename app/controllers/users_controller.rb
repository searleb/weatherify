class UsersController < ApplicationController
	before_action :check_if_logged_in, :except =>[:new, :create]
	before_action :check_if_admin, :only => [:index]


	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end

	def index
			@users = User.all
	end

	def edit
		render :text => 'This is the user edit page.'
	end


	private

	def user_params
		params.require(:user).permit(:username, :avatar, :password, :password_confirmation)	
	end

	def check_if_logged_in
		redirect_to(root_path) if @current_user.nil?
	end

	def check_if_admin
		redirect_to(root_path) unless @current_user.is_admin?r	
	end
end
