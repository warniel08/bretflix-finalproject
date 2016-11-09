class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  # def update
  #   current_user.update(params)
  #   redirect_to "/profile"
  # end

end
