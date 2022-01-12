Rails.application.routes.draw do

  get "/find_actor" => "actors#find_actor"

  get "/find_actor/:id" => "actors#find_actor"

  get "/all_actors" => "actors#all_actors"

end
