Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:index, :create, :show]
    end
  end

  resources :messages 
end
