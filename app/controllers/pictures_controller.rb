class PicturesController < ApplicationController
  # GET	/pictures/new
  def new
    @pictures=Picture.all
  end

  # GET	/pictures/:id
  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments
    @days_ago=@co
  end

  def create
  end

  def edit
  end

  def update
  end

  # DELETE	/pictures/:id
  def destroy
    def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to categories_path, status: :see_other
  end
  end
end
