class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    p "========================================================"
    @user = User.create!(user_params)

    redirect_to 'users#index'
  end

  private
    def user_params
      params.required(:user).permit(:first_name, :last_name, :password, :email)
    end
end

# Why, when the errors appear does the route change to /users? and not stay on the registration page?????????????
# Also, why does it mess up the formatting? Extra spaces between first and last names
