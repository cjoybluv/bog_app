class SightingsController < ApplicationController


  def index
    # render params
    @sightings = Sighting.all

  end


  def show
    @sighting = Sighting.find params[:id]
    # puts params
    # render json: params
  end

  def new
    @sighting = Sighting.new
  end

  def create
    # render json: params
    Sighting.create sighting_params
    redirect_to sightings_path
  end

  def edit
    @sighting = Sighting.find params[:id]
  end

  def update
    # render json: params
    t = Sighting.find params[:id]
    t.update sighting_params
    redirect_to sightings_path
  end

  def destroy
    # render json: params
    Sighting.find(params[:id]).delete
    redirect_to sightings_path
  end

   private

  def sighting_params
    # params.require(:sighting).permit(:description,:creature_id)
    params.require(:sighting).permit(:description,:creature_id, :location_id, :user_id)
  end



end
