class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      @cocktails = Cocktail.search_by_attributes_and_ingredients(params[:query])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new

    fav_cocktails = []
    current_user.favorite_cocktails.each do |fav|
      fav_cocktails.push(fav.cocktail_id)
    end

    @favorited = fav_cocktails.include?(@cocktail.id)

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def favorite
    type = params[:type]
    @cocktail = Cocktail.find(params[:id])
    if type == "favorite"
      current_user.favorites << @cocktail
      redirect_back fallback_location: root_path, notice: "You favorited #{@cocktail.name}"

    elsif type == "unfavorite"
      current_user.favorites.delete(@cocktail)
      redirect_back fallback_location: root_path, notice: "Unfavorited #{@cocktail.name}"

    else
      # Type missing, nothing happens
      redirect_back fallback_location: root_path, notice: 'Nothing happened.'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
