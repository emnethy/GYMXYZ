Rails.application.routes.draw do
  get 'cart/index'
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'


  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'products/index'

  resources :memberships
  resources :categories
  resources :registrations
  devise_for :users do
       get '/sign_up', to: 'devise/registrations#new', as: "new_users_registration"
       get '/login', to: 'devise/sessions#new', as: "login_path"
       get '/logout', to: 'user#logout'
       get '/profile', to: 'registrations#show', as: "user_profile_path"
     end

  

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/thanks', to: 'static_pages#thanks'
  
  
  resources :products, only: [:index]
  resources :order_items, only: [:create, :update, :destroy]

  
  get '/shop', to: 'static_pages#shop'
  
  
  root :to => 'static_pages#home'
  
 
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
