Rails.application.routes.draw do
  resources :contacts

  root to:'tops#index'

  resources :feeds do
    collection do
      post :confirm
      patch :confirm # confirm後のupdateに必要
    end
    member do
      patch :confirm  # confirm_feeds_pathの生成に必要
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    collection do
      get :favorite_index
    end
  end

  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
