class Admin::FundTypesController < ApplicationController
  def index
    @fund_type = FundType.new
    @fund_types = FundType.all
  end

  def create
    @fund_type = FundType.new(fund_type_params)
    if @fund_type.save
      redirect_to admin_fund_types_path
    else
      @fund_types = FundType.all
      render :index
    end
  end

  def edit
    @fund_type = FundType.find(params[:id])
  end

  def update
    @fund_type = FundType.find(params[:id])
    if @fund_type.update(fund_type_params)
      redirect_to admin_fund_types_path
    else
      render :edit
    end
  end



  private

  def fund_type_params
    params.require(:fund_type).permit(:fund_type)
  end
end
