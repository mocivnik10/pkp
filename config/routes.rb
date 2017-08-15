Rails.application.routes.draw do

  root 'landing#index'

  resources :testimonials, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :ipm_suggestions, only: [:index, :show]
  match "/about_project", to: "about_project#index", via: 'get'
  match "/ipr_tad_usage", to: "ipr_tad_usage#index", via: 'get'
  match "/report", to: "report#index", via: 'get'
  match "/final_ipr_tad", to: "final_ipr_tad#index", via: 'get'

  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  namespace :admin do
    resources :articles
    resources :testimonials
    resources :ipm_suggestions
  end

  get '/admin', to: redirect('/admin/articles')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
