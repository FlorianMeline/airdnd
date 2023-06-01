class Owner::ContractsController < ApplicationController
  def index
    @user_contracts = current_user.contracts
  end

  def update
    
  end
end
