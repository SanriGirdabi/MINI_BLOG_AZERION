Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create]
  end
  constraints subdomain: 'users' do
    get "/users/:id", to: 'users#show', as: 'show'
    get '/users', to: 'users#index'
  end
  devise_for :users
  root to: 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
