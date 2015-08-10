Rails.application.routes.draw do
  namespace :api do
    resources :seasons, only: [:index]
  end
end
