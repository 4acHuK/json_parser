Rails.application.routes.draw do
  resources :categories, only: [:index, :show]

  root to: 'categories#index'
end
