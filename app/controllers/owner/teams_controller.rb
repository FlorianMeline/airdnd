class Owner::TeamsController < ApplicationController
  def index
    @user_teams = current_user.teams
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.owner = current_user
    if @team.save!
      redirect_to owner_teams_path(@team.owner)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def team_params
    params.require(:team).permit(:name, :description, :price_per_day, :dungeon_type, :photo)
  end

end
