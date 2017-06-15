Rails.application.routes.draw do

  resources :charges, only: [:new, :create]
  resources :wikis

  get 'welcome/index'

  root 'welcome#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }

end
