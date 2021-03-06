class CocktailsController < ApplicationController
  def index
    @cocktails = if params[:query]
      Cocktail.where('name LIKE ?', "%#{params[:query]}%")
    else
      Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description)
  end
end
