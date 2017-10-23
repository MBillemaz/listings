class ListingsController < ApplicationController
  def index

    @listings = Listing.search(params, current_user)
    #@listings = Listing.all
    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def new
    @listing = Listing.new
  end

  def show
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      redirect_to listings_path
    else
      render template: '/listings/new'
    end
  end

  def contact
    Conversation.generate(params, current_user)
  end

private
  def listing_params
    params.require(:listing)
          .permit(
            :title,
            :description,
            :picture,
            :price,
            :category_id
          ).merge(user_id: current_user.id)
  end
end
