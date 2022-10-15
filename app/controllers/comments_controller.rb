class CommentsController < ApplicationController
  # GET	/comments/new
  def new
    @comment = Comment.new
  end

  # POST	/comments
  def create
    @comment = Comment.new(comment_params)
  end

  # DELETE	/comments/:id
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to picture_path, status: :see_other
  end

  private
  def category_params
    params.require(:comment).permit(:description)
  end
end
