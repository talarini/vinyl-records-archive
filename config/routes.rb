Rails.application.routes.draw do
  root 'home#index'
  resources :bands
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
