Rails.application.routes.draw do
  root 'landing#index'

  resources :testimonials, only: [:index, :show]
  resources :articles, only: [:index, :show]

  devise_for :admins

  namespace :admin do
    resources :articles
    resources :testimonials
  end

  get '/admin', to: redirect('/admin/articles')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
