Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do
    
    root 'homepage#index'
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    #get '/listings', to: 'listings#index'
    #get '/listings/new', to: 'listings#new'

    namespace :account do
      resources :user, only: [:index, :create]
      resources :messages, only: [:index]
      resources :conversation, only: [:index, :create]
    end
    
    devise_for :users
    #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
    
    resources :listings

    #apipie
  end
end
