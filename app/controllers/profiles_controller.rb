class ProfilesController < ApplicationController
  before_action :set_user,   only: [:show, :edit, :update]

  def show
    @donations = Donation.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end

    def user_params
      params.require(:user).permit(:email, :nickname, :age, :gender_id, :introduction)
    end
end