class HomesController < ApplicationController
  def index
    @donations = Donation.all
  end
end
