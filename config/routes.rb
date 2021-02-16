Rails.application.routes.draw do
  scope '/users' do
    get '/:id', to: 'users#show'
    get '/', to: 'users#index'
  end
  resources :comments
  resources :posts
  devise_for :users
  root 'posts#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
