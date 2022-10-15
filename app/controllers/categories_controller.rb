class CategoriesController < ApplicationController
  # GET	/categories
  def index
    @categories=Category.all
  end

  # GET	/categories/:id
  def show
    @category=Category.find(params[:id])
    @pictures=@category.pictures
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  # DELETE	/categories/:id
  def destroy
    @category=Category.find(params[:id])
    p @category
    @category.destroy

    redirect_to categories_path, status: :see_other
  end
end
