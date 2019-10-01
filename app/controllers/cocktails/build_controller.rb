class Cocktails::BuildController < ApplicationController
  include Wicked::Wizard

  steps :add_name, :add_ingred, :add_direct

  def show
    @cocktail = Cocktail.find(params[:cocktail_id])
    render_wizard
  end


  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    params[:cocktail][:status] = step.to_s
    params[:cocktail][:status] = 'active' if step == steps.last
    @cocktail.update(cocktail_params)
    render_wizard @cocktail
  end


  def create
    @cocktail = Cocktail.create
    redirect_to wizard_path(steps.first, cocktail_id: @cocktail.id)
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description, :difficulty, :prep_time, :base_spirit, :glass, :flavor, :status)
  end
end
