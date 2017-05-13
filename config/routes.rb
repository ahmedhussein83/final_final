

  Rails.application.routes.draw do
  resources :ahmeds
      devise_for :users, controllers: { sessions: 'users/sessions'}
      root 'ahmeds#index'
       
      
    end

