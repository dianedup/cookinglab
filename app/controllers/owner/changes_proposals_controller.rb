class Owner::ChangesProposalsController < ApplicationController
  def accept
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'accepted'

    if @changes_proposal.save
      @updated_recipe = merge_cp_on_original_recipe
      # redirect_to owner_dashboard_path(anchor: "changes-proposals")
      redirect_to recipe_path(@updated_recipe)
    end
  end

  def deny
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'denied'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end

  private

  def merge_cp_on_original_recipe
    ::Recipes::MergeCpOnOriginalRecipeService.new(@changes_proposal.recipe.id).call
    # recipe_id <=> id of recipe with kind = "changes_proposal", not original recipe

  end
end
