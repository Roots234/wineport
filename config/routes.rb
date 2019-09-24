Rails.application.routes.draw do

  devise_for :users
  root 'products#index'
  
  resources :products, only: %i(new create show)
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
