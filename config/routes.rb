Rails.application.routes.draw do

  

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  
  root to: 'homes#top'
  
  get 'about' => 'homes#about', as: 'about'

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]

end
