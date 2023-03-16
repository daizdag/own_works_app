class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @collection = Collection.find(params[:collection_id]) 
    if @comment.save
      CommentChannel.broadcast_to @collection, { comment: @comment, user: @comment.user }
    end
  end

  def destroy 
    @collection = Collection.find(params[:collection_id])
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to collection_path(@collection)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, collection_id: params[:collection_id])
  end
end
