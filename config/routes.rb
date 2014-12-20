Rails.application.routes.draw do

  resources        :users

  root             'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'signup'  => 'users#new'

end
