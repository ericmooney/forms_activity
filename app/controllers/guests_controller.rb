class GuestsController < ApplicationController
  def new
    @user = User.new
    @colors = [
      "blue",
      "red",
      "green",
      "yellow",
    ]
  end

  def create
    User.create(params[:user])
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:guest_id])
    @colors = [
      "blue",
      "red",
      "green",
      "yellow",
    ]

  end

  def update
    @user = User.find(params[:guest_id])
    @user.update_attributes(params[:user])
    redirect_to root_path
  end

  def change
    @users = User.all
  end

  def set_color
    @user = User.find(params[:guest_id])
    @user.update_attribute("favorite_color", params[:color])
    redirect_to root_path
  end



end