class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find_by(id: params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new
    @offer.price = params[:price]
    @offer.shape = params[:shape]
    @offer.cut = params[:cut]
    @offer.color = params[:color]
    @offer.clarity = params[:clarity]
    @offer.carat = params[:carat]
    @offer.comment = params[:comment]
    @offer.user_id = current_user.id
    @offer.merchant_id = params[:merchant_id]
    @offer.rfp_id = params[:rfp_id]

    if @offer.save
      redirect_to offers_url, notice: "Offer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find_by(id: params[:id])
  end

  def update
    @offer = Offer.find_by(id: params[:id])
    @offer.price = params[:price]
    @offer.shape = params[:shape]
    @offer.cut = params[:cut]
    @offer.color = params[:color]
    @offer.clarity = params[:clarity]
    @offer.carat = params[:carat]
    @offer.comment = params[:comment]
    @offer.user_id = current_user.id
    @offer.merchant_id = params[:merchant_id]
    @offer.rfp_id = params[:rfp_id]

    if @offer.save
      redirect_to offers_url, notice: "Offer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find_by(id: params[:id])
    @offer.destroy

    redirect_to offers_url, notice: "Offer deleted."
  end
end
