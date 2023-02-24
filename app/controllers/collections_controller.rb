class CollectionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_collection, only: [:show, :edit, :update, :destroy]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @collections = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def edit
  end

  def update
    if @collection.update(collection_params)
      redirect_to collection_path(@collection)
    else
      render :edit
    end
  end

  def destroy
    @collection.destroy
    redirect_to root_path
  end

  private

  def collection_params
    params.require(:collection).permit(:title, :point, :content, :category_id, {images: []}).merge(user_id: current_user.id)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @collection.user
  end
end
