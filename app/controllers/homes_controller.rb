class HomesController < ApplicationController
  
  def index
    @donations = Donation.all
  end

  def howitworks

  end
end
