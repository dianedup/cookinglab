class Owner::DashboardsController < ApplicationController
  def show
    @current_user = current_user
    @recipes = current_user.recipes.order("created_at DESC")

    @changes_proposals = []
    @recipes.each do |recipe|
      recipe.recipes_with_changes_proposals.each do |changes_proposal_recipe|
        changes_proposal_recipe.changes_proposals.each do |changes_proposal|
          @changes_proposals << changes_proposal
        end
      end
    end
  end
end
