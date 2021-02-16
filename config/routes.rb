Rails.application.routes.draw do
  resources :comments, constraints: { subdomain: '' }
  resources :posts, constraints: { subdomain: '' }
  constraints subdomain: 'users' do
    get 'users/:id', to: 'users#show'
    get 'users/', to: 'users#index'
  end
  devise_for :users
  root to: 'posts#index', constraints: { subdomain: '' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
