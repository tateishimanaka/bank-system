class Admin::CollateralsController < ApplicationController

  def index
    @collateral = Collateral.new
    @collaterals = Collateral.all
  end

  def create
    @collateral = Collateral.new(collateral_params)
    if @collateral.save
      redirect_to admin_collaterals_path
    else
      @collaterals = Collateral.all
      render :index
    end
  end

  def edit
    @collateral = Collateral.find(params[:id])
  end

  def update
    @collateral = Collateral.find(params[:id])
    if @collateral.update(collateral_params)
      redirect_to admin_collaterals_path
    else
      render :edit
    end
  end



  private

  def collateral_params
    params.require(:collateral).permit(:collateral)
  end
end
