class SpritesController < ApplicationController
 def create
    @creature = Creature.find(params[:creature_id])
    @sprite = @creature.sprites.create(params[:sprite])
    redirect_to creature_path(@creature)
  end
  
 def destroy
    @creature = Creature.find(params[:creature_id])
    @sprite = @creature.sprites.find(params[:id])
    @sprite.destroy
    redirect_to creature_path(@creature)
  end
end
