class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @contract = Contract.new
  end
end
