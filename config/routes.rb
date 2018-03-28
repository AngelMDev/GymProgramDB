Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "programs/bodybuilding_index", to: 'programs#bodybuilding_index'
  get "programs/olympic_index", to: 'programs#olympic_index'
  get "programs/powerlifting_index", to: 'programs#powerlifting_index'
  get "programs/strongman_index", to: 'programs#strongman_index'
  resources :programs
  resources :users
end
