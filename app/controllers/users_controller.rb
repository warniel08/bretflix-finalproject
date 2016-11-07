class UsersController < ApplicationController
  def index
    redirect_to '/movies'
  end

  def new
    @user = User.new(user_params)

    @user.save
    redirect_to '/movies'
  end

  private
    def user_params
      params.required(:user).permit(:first_name, :last_name, :password, :email)
    end
end

# Why, when the errors appear does the route change to /users? and not stay on the registration page?????????????
