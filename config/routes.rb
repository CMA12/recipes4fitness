Rails.application.routes.draw do

  resources :meetings
  devise_for :users

  root to: 'pages#home'

  resources :recipes
  resources :ingredients
  resources :meal_planner, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
