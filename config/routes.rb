Rails.application.routes.draw do
  resources :admin, only: [:index] 

  devise_for :admins
  root 'landing#index'

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
