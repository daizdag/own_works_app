class CollectionsController < ApplicationController

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



  private

  def collection_params
    params.require(:collection).permit(:title, :point, :content, :category_id, :price, :image).merge(user_id: current_user.id)
  end

end
