class CommentsController < ApplicationController
  # GET	/comments/new
  def new
  end

  # POST	/comments
  def create
  end

  # DELETE	/comments/:id
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to picture_path, status: :see_other
  end
end
