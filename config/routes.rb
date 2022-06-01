Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :posts do
    get 'likes', on: :collection
  end
  resources :users, only: %i[new create]
  resources :likes, only: %i[create destroy]
end
