Rails.application.routes.draw do

  root 'states#index'

  get 'state/:id', to: "states#show"
  get 'city/:id', to: "city_zip_codes#show"
  get 'cities', to: "city_zip_codes#index"
end
