class RelationshipsController < ApplicationController

  def show
    @relationships = Relationship.all
  end

  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer  
  end

  def followings
    @user = User.find(params[:user_id])
    @relationships = @user.followings
  end

  def followers
    @user = User.find(params[:user_id])
    @relationships = @user.followers
  end
end
