class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if signed_in?
      redirect_to cocktails_path
    end
  end
end
