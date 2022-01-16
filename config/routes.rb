Rails.application.routes.draw do
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/moviesquery" => "movies#show"
  post "/movies" => "movies#show"

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  get "/actorsquery" => "actors#show"
  post "/actors" => "actors#show"
end
