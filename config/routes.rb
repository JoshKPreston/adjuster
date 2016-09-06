Rails.application.routes.draw do
  
  resources :assignments 
  
  resources :submits, only: [:index, :new, :create, :destroy]

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'
  
end