Rails.application.routes.draw do
  resources :likes
  resources :posts do
    resources :comments
  end
  root 'posts#index'
end
