class Owner::ContributionsController < ApplicationController
  def new
    @contribution = ChangesProposal.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @contribution = ChangesProposal.new(contribution_params)
    @recipe = Recipe.find(params[:recipe_id])
    @contribution.recipe = @recipe
    @contribution.status = 'pending'
    @contribution.save
    redirect_to contributions_path
  end

  private

  def contribution_params
    params.require(:changes_proposal).permit(:message)
  end
end
