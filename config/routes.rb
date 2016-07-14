Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'users', to: 'users#index'
  get 'tweets', to: 'tweets#index'

  get '/', to: 'users#index'

end
