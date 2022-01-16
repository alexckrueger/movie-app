class ActorsController < ApplicationController

  def index
    render json: Actor.all
  end

  def show
    id = params[:id]
    actor = Actor.find(id)
    render json: actor
  end

end
