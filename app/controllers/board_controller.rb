class BoardController < ApplicationController

  def index
    @users = User.all
  end
  
  # Method to change status
  def change
    @user = current_user
  end
  
  #Method to update status
  def update
    @user = current_user
    @user.status = params[:user][:status]
    @user.save
    redirect_to :root
  end
  
  
end
