class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find_by(id: params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new
    @match.merchant_id = params[:merchant_id]
    @match.rfp_id = params[:rfp_id]

    if @match.save
      redirect_to matches_url, notice: "Match created successfully."
    else
      render 'new'
    end
  end

  def edit
    @match = Match.find_by(id: params[:id])
  end

  def update
    @match = Match.find_by(id: params[:id])
    @match.merchant_id = params[:merchant_id]
    @match.rfp_id = params[:rfp_id]

    if @match.save
      redirect_to matches_url, notice: "Match updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @match = Match.find_by(id: params[:id])
    @match.destroy

    redirect_to matches_url, notice: "Match deleted."
  end
end
