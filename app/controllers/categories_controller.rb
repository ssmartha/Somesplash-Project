class CategoriesController < ApplicationController
  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      # /departments/4
      # redirect_to "/departments/#{@department.id}"
      # redirect_to department_path(@department)
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
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

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end
