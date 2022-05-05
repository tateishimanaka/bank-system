class User::CorporationCustomersController < ApplicationController

  # def index
  #   @corporation_customers = CorporationCustomers.all
  # end

  def show
    @corporation_customer = CorporationCustomer.find(params[:id])
  end
end
