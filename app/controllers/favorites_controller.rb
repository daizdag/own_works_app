class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_collection, only: [:create, :destroy]

  def create
    Favorite.create(user_id: current_user.id, collection_id: params[:collection_id])
    redirect_to collection_path(@collection)
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, collection_id: params[:collection_id])
    favorite.destroy
    redirect_to collection_path(@collection)
  end

private

  def set_collection
    @collection = Collection.find(params[:collection_id])
  end

end
