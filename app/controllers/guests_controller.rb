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

  end

  def update

  end

  def change
    # @color = User.find(params[:favorite_color])
    # this will come in from the URL
  end


end