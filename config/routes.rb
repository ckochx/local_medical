Rails.application.routes.draw do

  root 'states#index'

  get 'state/:slug', to: "states#show"
  get 'city/:slug', to: "city_zip_codes#show"
end
