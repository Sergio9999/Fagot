Rails.application.routes.draw do
  root 'static_pages#index'
  resources :messages, only: [:new, :create]
end
