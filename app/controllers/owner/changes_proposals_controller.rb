class Owner::ChangesProposalsController < ApplicationController
  before_action :set_owner_changes_proposals, only: [:accept, :deny]

  def accept
    @changes_proposal.status = 'accepted'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
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
end
