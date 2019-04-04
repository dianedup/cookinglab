class Owner::ChangesProposalsController < ApplicationController
  def accept
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'accepted'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end

  def deny
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'denied'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end
end
