class UsersController < ApplicationController
  
  # GET /pins/1
  def show
    @user = User.find(params[:id])
    @pins = @user.pins.page(params[:page]).per_page(20)

  end

end
