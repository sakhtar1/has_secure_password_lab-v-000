class UsersController < ApplicationController

  #before_action :logged_in?

  def new
    @user = User.new
  end

  def create
    if @user = User.create(name: params[:user][:name], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
        session[:user_id] = @user.id
        redirect_to '/users/new'
    else
        redirect_to '/users/home'
   end
  end

  def home
  end

end
