Rails.application.routes.draw do

  get 'users/new'

  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'signup' => 'users#new'

end
