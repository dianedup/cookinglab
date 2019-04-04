class Owner::ChangesProposalsController < ApplicationController
  def accept
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'accepted'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end

  def refuse
    @changes_proposal = ChangesProposal.find(params[:id])
    @changes_proposal.status = 'refused'

    if @changes_proposal.save
      redirect_to owner_dashboard_path(anchor: "changes-proposals")
    end
  end
end
