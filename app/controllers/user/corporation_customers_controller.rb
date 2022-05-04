class User::CorporationCustomersController < ApplicationController

  def index
    @store = Store.find(params[:store_id])
    @corporation_customers = @store.corporation_customers.all
  end

  def show
  end
end
