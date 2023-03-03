class CommentChannel < ApplicationCable::Channel
  def subscribed
    @collection = Collection.find(params[:collection_id]) 
    stream_for @collection 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end