Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  root to: 'videos#index'
  resources :videos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
