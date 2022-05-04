class Store::IndividualCustomersController < ApplicationController

  def new
    @individual_customer = IndividualCustomer.new
  end

  def create
    @individual_customer = IndividualCustomer.new(individual_customer_params)
    @individual_customer.store_id = current_store.id
    if @individual_customer.save
      redirect_to store_individual_customer_path(@individual_customer)
    else
      render :new
    end
  end

  def index
    @individual_customers = IndividualCustomer.all
  end

  def show
    @individual_customer = IndividualCustomer.find(params[:id])
  end

  def edit
    @individual_customer = IndividualCustomer.find(params[:id])
  end

  def update
    @individual_customer = IndividualCustomer.find(params[:id])
    if @individual_customer.update(individual_customer_params)
      redirect_to store_individual_customer_path(@individual_customer)
    else
      render :edit
    end
  end

  private

  def individual_customer_params
    params.require(:individual_customer).permit(:store_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :business, :yearly_income, :birthday, :is_active)
  end

end
