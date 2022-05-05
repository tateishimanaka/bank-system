class User::CorporationCustomersController < ApplicationController

  def index
    @store = Store.find(params[:store_id])
    @corporation_customers = @store.corporation_customers.all
  end

  def show
    @store = Store.find(params[:store_id])
    @corporation_customer = CorporationCustomer.find(params[:id])
  end
end
