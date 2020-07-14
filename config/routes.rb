Rails.application.routes.draw do
  root to:'tops#index'
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    collection do
      get :favorite_index
    end
  end
  resources :favorites, only: [:create, :destroy]
end
