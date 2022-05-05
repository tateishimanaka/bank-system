class Store::CorporationCustomersController < ApplicationController

  def new
    @corporation_customer = CorporationCustomer.new
  end

  def create
    @corporation_customer = CorporationCustomer.new(corporation_customer_params)
    @corporation_customer.store_id = current_store.id
    if @corporation_customer.save
      redirect_to store_corporation_customer_show_path(@corporation_customer)
    else
      render :new
    end
  end

  def index
    @corporation_customers = current_store.corporation_customers
  end

  def show
    @corporation_customer = CorporationCustomer.find(params[:id])
  end

  def edit
    @corporation_customer = CorporationCustomer.find(params[:id])
  end

  def update
    @corporation_customer = CorporationCustomer.find(params[:id])
    if @corporation_customer.update(corporation_customer_params)
      redirect_to store_corporation_customer_show_path(@corporation_customer)
    else
      render :edit
    end
  end

  private

  def corporation_customer_params
    params.require(:corporation_customer).permit(:store_id, :name, :name_kana, :president, :president_kana, :postal_code, :address, :telephone_number, :president_telephone_number, :president_postal_code, :president_address, :category, :capital, :is_active)
  end

end
