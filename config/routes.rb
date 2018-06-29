Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
    resources :reviews
  end
  resources :doses, only: [:destroy]
end


