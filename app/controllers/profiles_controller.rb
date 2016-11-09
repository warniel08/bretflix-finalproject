class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def update
    p "Hit the right route"

    redirect_to "/profile"
  end

end
