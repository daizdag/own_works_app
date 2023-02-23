class CollectionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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



  private

  def collection_params
    params.require(:collection).permit(:title, :point, :content, :category_id, {images: []}).merge(user_id: current_user.id)
  end

end
