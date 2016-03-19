Rails.application.routes.draw do
  root 'snaps#index'

  resources :snaps
end
