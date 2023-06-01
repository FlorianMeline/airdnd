module Owner
  class TeamsController < ApplicationController
    def index
      @user_teams = current_user.teams
    end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)
    team.owner = current_user
    team.save
    redirect_to teams_path

  end

  def team_params
    params.require(:team).permit(:name, :description, :price_per_day, :dungeon_type)
  end
end

