class UsersController < ApplicationController

  def index
    @users = User.all.order(:last_name)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to admin_index_path
  end

  private
    def user_params
      params.required(:user).permit(:first_name, :last_name, :email)
    end
end

