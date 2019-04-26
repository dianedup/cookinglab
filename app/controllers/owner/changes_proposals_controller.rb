class Owner::ChangesProposalsController < ApplicationController
  before_action :set_owner_changes_proposals, only: [:accept, :deny]

  def accept
    @changes_proposal.status = 'accepted'

    if @changes_proposal.save
      @updated_recipe = merge_cp_on_original_recipe
      # redirect_to owner_dashboard_path(anchor: "changes-proposals")
      redirect_to recipe_path(@updated_recipe)
    end
  end

  def deny
    @changes_proposal.status = 'denied'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end

  private


  def set_owner_changes_proposals
    @changes_proposal = ChangesProposal.find(params[:id])
  end
  
  def merge_cp_on_original_recipe
    ::Recipes::MergeCpOnOriginalRecipeService.new(@changes_proposal.recipe.id).call
    # recipe_id <=> id of recipe with kind = "changes_proposal", not original recipe
  end
end
