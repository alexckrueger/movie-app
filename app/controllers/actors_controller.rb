class ActorsController < ApplicationController

  def find_actor
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end


end
