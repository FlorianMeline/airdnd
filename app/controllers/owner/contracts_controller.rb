class Owner::ContractsController < ApplicationController
  def index
    @user_contracts = current_user.contracts
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(user_contracts_params)

    if @contract.status == "accepted"
      flash[:success] = "Contract accepté"
      redirect_to owner_contracts_path
    else

      flash[:danger] = "Contract refusé"
      redirect_to owner_contracts_path
    end
  end

  private

  def user_contracts_params
    params.require(:contract).permit(:status, :id)
  end
end
