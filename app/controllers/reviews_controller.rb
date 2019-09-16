class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
        respond_to do |format|
          format.html { redirect_to cocktail_path(@cocktail) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
    else
      respond_to do |format|
        format.html { render 'cocktails/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
