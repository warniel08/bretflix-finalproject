class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def update
  end

  private
    def user_params
      params.required(:user).permit(:first_name, :last_name, :email)
    end
end

