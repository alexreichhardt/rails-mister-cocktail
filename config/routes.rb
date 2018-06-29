Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses
    resources :reviews
  end
  resources :doses, only: [:destroy]
end


