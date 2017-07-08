Rails.application.routes.draw do
  resources :properties
  root to: 'properties#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
