Rails.application.routes.draw do
  root 'ruweis#new'
  resources :winners, only: [:new, :create], :controller => "ruweis"
end
