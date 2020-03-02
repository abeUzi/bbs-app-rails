Rails.application.routes.draw do
  devise_for :users
  root "forums#index"
  resources :forums, only: [:show,:create] do
    resources :responses, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
