class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find_by(id: params[:id])
  end

  def new
  end

  def create
    @merchant = Merchant.new
    @merchant.business_name = params[:business_name]
    @merchant.address = params[:address]
    @merchant.city = params[:city]
    @merchant.state = params[:state]
    @merchant.zip_code = params[:zip_code]
    @merchant.email = params[:email]
    @merchant.phone_number = params[:phone_number]
    @merchant.image_url = params[:image_url]

    if @merchant.save
      redirect_to merchants_url, notice: "Merchant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @merchant = Merchant.find_by(id: params[:id])
  end

  def update
    @merchant = Merchant.find_by(id: params[:id])
    @merchant.business_name = params[:business_name]
    @merchant.address = params[:address]
    @merchant.city = params[:city]
    @merchant.state = params[:state]
    @merchant.zip_code = params[:zip_code]
    @merchant.email = params[:email]
    @merchant.phone_number = params[:phone_number]
    @merchant.image_url = params[:image_url]

    if @merchant.save
      redirect_to merchants_url, notice: "Merchant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @merchant = Merchant.find_by(id: params[:id])
    @merchant.destroy

    redirect_to merchants_url, notice: "Merchant deleted."
  end
end
