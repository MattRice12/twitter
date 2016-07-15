Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'users/:id', to: 'users#show'
  get 'tweets/:id', to: 'tweets#show'

  get 'users', to: 'users#index'
  get 'tweets', to: 'tweets#index'



  root 'dashboard#index'

end
