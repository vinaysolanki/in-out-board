class BoardController < ApplicationController
  def index
  
    @users = User.all
    
    if user_signed_in?
      current_user.status == 'Online'
    end
  
  end
  
  def change
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.status = params[:user][:status]
    @user.save
    redirect_to :root
  end
  
  
  def status_label
  
    if current_user.status == 'Not In'
      @label = 'label-important'
    elsif current_user.status == 'Away'
      @label = 'label-warning'
    else
      @label = 'label-success'
    end
  
  end
  
  
end
