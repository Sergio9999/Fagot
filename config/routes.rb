Rails.application.routes.draw do
  root 'static_pages#index'
  resources :inviters, only: :create
end
