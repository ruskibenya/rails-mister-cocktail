class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if signed_in?
      redirect_to cocktails_path
    end
  end

  def my_cocktails
    @my_cocktails = current_user.cocktails
    @fav_cocktails = current_user.favorites
  end
end
