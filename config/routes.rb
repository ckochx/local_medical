Rails.application.routes.draw do

  root 'states#index'

  resources :states, only: [:index, :show] do
  end

  resources :city_zip_codes, only: [:show] do
  end


  get 'state/:slug', to: "states#show"
  get 'city/:slug', to: "city_zip_codes#show"
end
