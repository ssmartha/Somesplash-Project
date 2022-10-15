class CategoriesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
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
end
