class CommentsController < ApplicationController

  def index
    @comment = Comment.order("RANDOM()").first
  end

  def new
    @comment = Comment.new
  end

end
