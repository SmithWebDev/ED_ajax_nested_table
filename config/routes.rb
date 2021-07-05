Rails.application.routes.draw do
  resources :cities
  resources :countries
  get 'countries/cities/:id', to: 'countries#cities', as: 'countries_cities'
  root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
