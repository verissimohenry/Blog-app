Rails.application.routes.draw do
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end

  root  'home#index'
end
