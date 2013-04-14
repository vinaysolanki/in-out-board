class BoardController < ApplicationController
  def index
  
    @users = User.all
    
  end
end
