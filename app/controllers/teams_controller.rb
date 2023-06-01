class TeamsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @teams = Team.all
    if params[:query].present?
      @teams = Team.search_by_dungeon_type_and_success_rate(params[:query])
    else
      @teams = Team.all
    end
  end

  def show
    @team = Team.find(params[:id])
    @contract = Contract.new
  end
end
