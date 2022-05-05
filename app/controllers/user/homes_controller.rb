class User::HomesController < ApplicationController

  def top
    @corporation_customers = CorporationCustomer.all
  end

end
