class ContractsController < ApplicationController
  def index
    @contracts = current_user.contracts
  end

  def new
    @contract = Contract.new
  end

  def create
    @team = Team.find(params[:team_id])
    @contract = Contract.new(contracts_params)
    @contract.team = @team
    @contract.renter = current_user
    @contract.status = "En attente"
    @total_day = (@contract.begin_date.jd..@contract.end_date.jd).count
    @total_price = @total_day * @team.price_per_day
    @contract.total_price = @total_price
    if @contract.save
      redirect_to contracts_path(@contracts)
    else

      render :new, status: :unprocessable_entity
    end
  end

  private

  def contracts_params
    params.require(:contract).permit(:renter_id, :team_id, :begin_date, :end_date, :status, :total_price)
  end
end
