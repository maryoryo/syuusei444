Rails.application.routes.draw do

  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  
  root to: 'homes#top'
  
  get 'about' => 'homes#about', as: 'about'

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
