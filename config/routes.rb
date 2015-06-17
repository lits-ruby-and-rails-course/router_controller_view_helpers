Rails.application.routes.draw do

  concern :likable do
    resources :likes, only: [:create]
  end

  resources :posts, concerns: [:likable] do
    resources :comments, concerns: [:likable]
  end

  root 'posts#index'
end
