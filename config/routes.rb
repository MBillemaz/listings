Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do
    
    root 'homepage#index'
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    #get '/listings', to: 'listings#index'
    #get '/listings/new', to: 'listings#new'

    namespace :account do
      resources :user, only: [:index, :update]
      resources :messages, only: [:index]
      resources :contacts, only: [:index]
    end
    
    get '/pages/:id', to: 'page#show', as: 'page'

    devise_for :users
    #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
    
    resources :listings

    #apipie
  end
end
