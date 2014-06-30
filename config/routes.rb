Rails.application.routes.draw do
  resources :manufacturers, only: [:index, :show, :new, :create]
  resources :cars, only: [:index, :show, :new, :create]
end
