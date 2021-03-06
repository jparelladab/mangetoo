Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:index]

  resources :restaurants, except: [:show]

  resources :restaurants, only: [:show] do
    resources :visits, only: [:create]
    resources :bookmarks, only: [:create]
  end


  resources :visits, only: [:index] do
    resources :reviews, only: [:new, :create]
  end
  resources :visits, only: [:update, :destroy]

  resources :users, only: [] do
    resources :follows, only: [:create]
  end

  resources :follows, only: [:index, :destroy]
  resources :bookmarks, only: [:index, :destroy]
end
