class User::HomesController < ApplicationController
  def top
    @stores = Store.all
  end
end
