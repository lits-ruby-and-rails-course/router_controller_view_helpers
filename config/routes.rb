Rails.application.routes.draw do

  concern :likable do
    resources :likes
  end

  resources :posts, concerns: [:likable] do
    resources :comments, concerns: [:likable]
  end

  root 'posts#index'
end
