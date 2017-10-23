Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do
    root 'homepage#index'

    #get '/listings', to: 'listings#index'
    #get '/listings/new', to: 'listings#new'
    get '/pages/:id', to: 'page#index', as: 'page'

    devise_for :users
    #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'

    resources :listings

    #apipie
  end
end
