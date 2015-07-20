class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find params[:id]
    # puts params
    # render json: params
  end

  def new
    @creature = Creature.new
  end

  def create
    # render json: params
    Creature.create creature_params
    redirect_to creatures_path
  end

  def edit
    @creature = Creature.find params[:id]
  end

  def update
    # render json: params
    t = Creature.find params[:id]
    t.update creature_params
    redirect_to creatures_path
  end

  def destroy
    # render json: params
    Creature.find(params[:id]).delete
    redirect_to creatures_path
  end

   private

  def creature_params
    params.require(:creature).permit(:name,:description)
  end


end
