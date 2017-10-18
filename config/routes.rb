Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    
    root 'homepage#index'
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    #get '/listings', to: 'listings#index'
    #get '/listings/new', to: 'listings#new'

    devise_for :users
    #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
    
    resources :listings

    #apipie
  end
end
