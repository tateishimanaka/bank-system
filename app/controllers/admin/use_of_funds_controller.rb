class Admin::UseOfFundsController < ApplicationController

  def index
    @use_of_fund = UseOfFund.new
    @use_of_funds = UseOfFund.all
  end

  def create
    @use_of_fund = UseOfFund.new(use_of_fund_params)
    if @use_of_fund.save
      redirect_to admin_use_of_funds_path
    else
      @use_of_funds = UseOfFund.all
      render :index
    end
  end

  def edit
    @use_of_fund = UseOfFund.find(params[:id])
  end

  def update
    @use_of_fund = UseOfFund.find(params[:id])
    if @use_of_fund.update(use_of_fund_params)
      redirect_to admin_use_of_funds_path
    else
      render :edit
    end
  end

  private

  def use_of_fund_params
    params.require(:use_of_fund).permit(:use_of_fund)
  end

end
