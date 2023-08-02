class OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
    render :index
  end

  def show
    @opportunity = Opportunity.find_by(id: params[:id])
    render :show
  end

  def create
    @opportunity = Opportunity.create(
      title: params[:title],
      description: params[:description],
      date: params[:date],
      user_id: params[:user_id],
      status: params[:status],
    )
    render :show
  end

  def update
    @opportunity = Opportunity.update(
      title: params[:title] || @opportunity.title,
      description: params[:description] || @opportunity.description,
      date: params[:date] || @opportunity.date,
      # user_id: params[:user_id] || @opportunity.user_id,
      status: params[:status] || @opportunity.status,
    )
    render :show
  end

  def destroy
    @opportunity = Opportunity.find_by(id: params[:id])
    @opportunity.destroy
    render json: { message: "Opportunity lost" } #google this!!!
  end
end
