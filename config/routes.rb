Rails.application.routes.draw do
  root 'ruweis#new'
  resources :ruweis, only: [:new, :create]
end
