class User::CorporationProjectsController < ApplicationController

  def new
    @corporation_customer = CorporationCustomer.find(params[:corporation_customer_id])
    @corporation_project = CorporationProject.new
  end

  def create
    @corporation_customer = CorporationCustomer.find(params[:corporation_customer_id])
    @corporation_project.user_id = current_user.id
    @corporation_project = CorporationProject.new(corporation_project_params)
    @corporation_project.save
    redirect_to corporation_customer_corporation_project_show_path(@corporation_customer, @corporation_project)
  end

  def show
    @corporation_customer = CorporationCustomer.find(params[:corporation_customer_id])
    @corporation_project = CorporationProject.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def corporation_project_params
    params.require(:corporation_projects).permit(:corporation_customer_id, :user_id, :collateral_id, :use_of_fund_id, :fund_type_id, :loan, :span, :month_payment, :last_mont_payment, :interest_rate, :joint_guarantor, :own_resource, :end_day, :date, :appoint_date, :is_active)
  end

end
