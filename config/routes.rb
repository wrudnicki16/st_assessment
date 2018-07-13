Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create] do
    resources :answers, only: [:create]
  end

  resources :answers, only: [:new]

  root 'users#new'
end
