Rails.application.routes.draw do

  get 'sessions/new'

  resources        :users

  root                'static_pages#home'
  get    'contact' => 'static_pages#contact'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
