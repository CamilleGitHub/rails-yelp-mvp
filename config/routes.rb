Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  get 'restaurants', to: 'restaurants#index'
#  get 'restaurants/new', to: 'restaurants#new'
#  get 'restaurants/:id', to: 'restaurants#show'
#  post 'restaurants', to: 'restaurants#create'
  resources :restaurants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
