Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'comments#index'
  resources :comments
  get 'about', to: 'comments#about'  
  get 'all', to: 'comments#all'

  resources :images
end
