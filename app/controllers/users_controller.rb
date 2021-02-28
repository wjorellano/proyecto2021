class UsersController < ApplicationController
  def show
  end

  private
    def set_user
      @user = User.friendly.find(params[:id])
    end
    
end
