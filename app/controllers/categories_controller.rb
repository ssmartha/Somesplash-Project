class CategoriesController < ApplicationController
  def index
    categories = Category.all

    render json: categories.to_json
  end

  def new
  end

  def create
  end

  def show
    @categories = Category.find(params[:id])
    @pictures = @categories.pictures
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to categories_path
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
