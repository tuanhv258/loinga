Rails.application.routes.draw do
  namespace :admins do
    resources :categories
    resources :types
  end   
  root "indexes#index"
  resources :indexes
end
