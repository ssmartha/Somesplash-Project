class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end

  def destroy
  end

  private
  def category_params
    params.require(:comment).permit(:description)
  end
end
