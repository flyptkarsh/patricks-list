Rails.application.routes.draw do
  resources :places
  resources :lists
  devise_for :users
  root to: "lists#index"
end
