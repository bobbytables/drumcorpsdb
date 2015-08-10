Rails.application.routes.draw do
  namespace :api do
    resources :seasons, only: [:index]
    resources :divisions, only: [:index]
  end
end
