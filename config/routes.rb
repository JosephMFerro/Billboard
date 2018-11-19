Rails.application.routes.draw do
  devise_for :users
  root "accounts#index"
  resources :accounts
  resources :billboardmodels do
    
    resources :songs
  end
  
end