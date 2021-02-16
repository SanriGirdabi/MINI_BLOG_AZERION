Rails.application.routes.draw do
  get 'users/:id', to: 'users#show', constraints: { subdomain: 'users' }
  get 'users/', to: 'users#index', constraints: { subdomain: 'users' }
  resources :comments, constraints: { subdomain: '' }
  resources :posts, constraints: { subdomain: '' }
  devise_for :users, constraints: { subdomain: '' }
  root 'posts#index', constraints: { subdomain: '' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
