require_relative 'movies_controller'

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
    @checked_out = Movie.includes(:user).where("user_id = #{@user.id}")
    if @checked_out.empty?
      @user.destroy!
      redirect_to admin_index_path
    else
      render :outstanding_checkouts
    end
  end

  private
    def user_params
      params.required(:user).permit(:first_name, :last_name, :email)
    end
end

