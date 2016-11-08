class ProfilesController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    p params
    @user = current_user
  end

end
