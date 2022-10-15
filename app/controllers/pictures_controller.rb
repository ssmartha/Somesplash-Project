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
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:picture).permit(:name, :description)
  end
end
