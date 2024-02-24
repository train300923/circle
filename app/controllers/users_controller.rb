class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
  end

  def show
    @user.find(params[:id])
  end

  def destroy
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :address, :phone_number, :latitude,:longitude, :photo)
  end
end
