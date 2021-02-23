class CustomersController < ApplicationController

  def index
    @customers = Customers.all.limit(10)
  end

end
