class Owner::DashboardsController < ApplicationController
  def show
    @recipes = current_user.recipes.order("created_at DESC")
    @changes_proposals = []
    @recipes.each do |recipe|
      recipe.recipes_with_changes_proposals.each do |changes_proposal_recipe|
        changes_proposal_recipe.changes_proposals.each do |changes_proposal| # only 1 cp by cp_recipe
          @changes_proposals << changes_proposal
        end
      end
    end
    @changes_proposals.sort! { |cp| cp.created_at }
    @changes_proposals.sort! { |cp1, cp2| cp1.status <=> cp2.status }
    @changes_proposals.reverse!
  end
end
