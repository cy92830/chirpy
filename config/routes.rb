Rails.application.routes.draw do
  devise_for :users
  get 'chirps', :to => 'chirps#index', :as => :user_root
  
  resources :users
  resources :chirps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'chirps#index'
end