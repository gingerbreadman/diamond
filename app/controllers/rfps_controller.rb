class RfpsController < ApplicationController

  def index
    @rfps = Rfp.all
  end

  def show
    @rfp = Rfp.find_by(id: params[:id])
  end

  def new
  end

  def create
    @rfp = Rfp.new
    @rfp.max_price = params[:max_price]
    @rfp.shape = params[:shape]
    @rfp.cut = params[:cut]
    @rfp.color = params[:color]
    @rfp.clarity = params[:clarity]
    @rfp.carat = params[:carat]
    @rfp.comment = params[:comment]
    @rfp.user_id = params[:user_id]

    if @rfp.save
      redirect_to rfps_url, notice: "Rfp created successfully."
    else
      render 'new'
    end
  end

  def edit
    @rfp = Rfp.find_by(id: params[:id])
  end

  def update
    @rfp = Rfp.find_by(id: params[:id])
    @rfp.max_price = params[:max_price]
    @rfp.shape = params[:shape]
    @rfp.cut = params[:cut]
    @rfp.color = params[:color]
    @rfp.clarity = params[:clarity]
    @rfp.carat = params[:carat]
    @rfp.comment = params[:comment]
    @rfp.user_id = params[:user_id]

    if @rfp.save
      redirect_to rfps_url, notice: "Rfp updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rfp = Rfp.find_by(id: params[:id])
    @rfp.destroy

    redirect_to rfps_url, notice: "Rfp deleted."
  end
end
