class CommentsController < ApplicationController

  def index
    @comment = Comment.order("RANDOM()").first
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.invalid?
      flash[:error] = '<strong>Could not save.</strong> Invalid data, please try again.'
    end
    redirect_to root_path
  end

  def about
  end

  def all
    @comment = Comment.all
  end

  private

  def comment_params
    params.require(:comment).permit(:feedback, :author)
  end

end
