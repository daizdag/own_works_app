class ProfilesController < ApplicationController

  def show 
    @user = User.find(params[:id])
    @profile = Profile.all
  end
end