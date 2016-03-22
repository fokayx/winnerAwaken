Rails.application.routes.draw do
  devise_for :admins, path: "daikichi/admins", :skip => 'registrations' 
  root 'ruweis#new'
  resources :winners, only: [:new, :create], :controller => "ruweis"
  namespace :daikichi do
    resources :ruweis, only: [:index, :destroy]
    post 'exports' => "lists#export"
  end
end
