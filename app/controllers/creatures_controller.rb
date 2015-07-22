class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find params[:id]
    @tags = @creature.tags
    # puts params
    # render json: params
  end

  def new
    @creature = Creature.new
    @tags = Tag.all
    end

  def create
    # render json: params
    c = Creature.create(creature_params)
    update_tags c
    redirect_to creatures_path
  end

  def edit
    @creature = Creature.find params[:id]
    @tags = Tag.all
  end

  def update
    # render json: params
    c = Creature.find params[:id]
    c.update creature_params

    c.tags.clear
    update_tags c

    redirect_to c

    # t = Creature.find params[:id]
    # t.update creature_params
    # redirect_to creatures_path
  end

  def destroy
    # render json: params
    Creature.find(params[:id]).delete
    redirect_to creatures_path
  end


  def creature_sightings
    @creature = Creature.find params[:id]
  end


   private

  def creature_params
    params.require(:creature).permit(:name,:description)
  end

  def update_tags creature
    creature_tags = params[:creature][:tag_ids]
    creature_tags.each do |id|
      creature.tags << Tag.find(id) unless id.blank?
    end
  end


end
