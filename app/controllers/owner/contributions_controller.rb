class Owner::ContributionsController < ApplicationController
  def new
    @contribution = ChangesProposal.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @contribution = ChangesProposal.new(params_contributions)
    @recipe = Recipe.find(params[:recipe_id])
    @contribution.recipe = @recipe
    @contribution.status = 'pending'
    @contribution.save
    flash[:notice] = 'Merci ! Votre proposition a bien été envoyée.'
    redirect_to recipe_path(@recipe.original_recipe)
  end

  private

  def params_contributions
    params.require(:changes_proposal).permit(:message)
  end
end
