class Owner::TeamsController < ApplicationController
  def index
    @user_teams = current_user.teams
  end

  def new
  end

  def create
  end
end
