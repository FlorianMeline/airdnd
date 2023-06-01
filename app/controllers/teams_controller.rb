class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    @contract = Contract.new
  end



end
