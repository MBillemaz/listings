Rails.application.routes.draw do

  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'homepage#index'
    devise_for :users
    post '/listings/contact', to: 'listings#contact', as: 'listing_contact'
  end
  #apipie
end
