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
  end
end
