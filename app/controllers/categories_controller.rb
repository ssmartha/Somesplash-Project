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
  end

  def edit
  end

  def update
    categorie = Category.find(params[:id])

    if company.update(company_params)
  end
  def destroy
  end
end
