Rails.application.routes.draw do

  resources :contacts, except: [:show]
  resources :kinds

  root 'contacts#index'
end
