Rails.application.routes.draw do
  get 'doses/Controller'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index new show create destroy] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: [:destroy]
end
