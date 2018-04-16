Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/register'

  get 'static_pages/thanks'

  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
