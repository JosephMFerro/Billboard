Rails.application.routes.draw do
  root "billboardmodels#index"

  resources :billboardmodels do
    resources :artist
  end
end