class User::CorporationProjectsController < ApplicationController

  def new
    @corporation_project = CorporationProject.new
  end

  def create
    @store = Store.find(params[:store_id])
    @corporation_customer = CorporationCustomer.find(params[:corporation_customer_id])
    @corporation_project.user_id = current_user.id
    @corporation_project = CorporationProject.new(corporation_project_params)
    @corporation_project.save
    redirect_to store_corporation_customer_corporation_project_path(@store, @corporation_customer)
  end

  def show
  end

  private

  def corporation_project_params
    params.require(:corporation_projects).permit(:corporation_customer_id, :user_id, :collateral_id, :use_of_fund_id, :fund_type_id, :loan, :span, :month_payment, :last_mont_payment, :interest_rate, :joint_guarantor, :own_resource, :end_day, :date, :appoint_date, :is_active)
  end

end
