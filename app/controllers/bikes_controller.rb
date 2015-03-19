class BikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @bike = bike.create(bike_params)
    @bike.user_id = @user.id
    @bike.save
    redirect_to user_path(@user)
  end

  def new
    @user = User.find(params[:user_id])
    @bike = bike.create()
  end

  private
  def bike_params
    params.require(:bike).permit(:image)
  end
end
