Rails.application.routes.draw do
  root "billboardmodels#index"

  resources :billboardmodels
end
