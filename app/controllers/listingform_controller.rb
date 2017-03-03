class ListingformController < ApplicationController
  def new
    @listingform = Listingform.new
  end

  def create
    @listingform = Listingform.new(params[:listingform])
    @listingform.request = request
    if @listingform.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
