class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      # /departments/4
      # redirect_to "/departments/#{@department.id}"
      # redirect_to department_path(@department)
      redirect_to @picture
    else
      render :new, status: :unprocessable_entity
    end
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