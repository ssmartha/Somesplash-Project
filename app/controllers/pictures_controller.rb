class PicturesController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to pictures_path
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
  end

  def destroy
  end

  private
  
  def picture_params
    params.require(:picture).permit(:name, :description)
  end

end
