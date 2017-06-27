Rails.application.routes.draw do
  root :to => 'posts#index'

  # resources :posts

  resources :posts do
    post 'vote'
    resources :comments
  end
end
