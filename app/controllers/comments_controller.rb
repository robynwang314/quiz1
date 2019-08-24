class CommentsController < ApplicationController

  def index
    @comment = Comment.order("RANDOM()").first
  end

end
