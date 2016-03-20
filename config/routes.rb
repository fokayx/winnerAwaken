Rails.application.routes.draw do
  devise_for :admins
  root 'ruweis#new'
  resources :winners, only: [:new, :create], :controller => "ruweis"
end
