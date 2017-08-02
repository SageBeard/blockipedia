Rails.application.routes.draw do


  resources :charges, only: [:new, :create]
  resources :wikis
  resources :collaborators


  get 'welcome/index'

  root 'welcome#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }

end
