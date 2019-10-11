class ImagesController < ApplicationController

  def index
    @image = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    Image.create(image_params)
    redirect_to root_path
  end

  private

  def image_params
    params.require(:image).permit(:caption, :author, :picture)
  end

end
