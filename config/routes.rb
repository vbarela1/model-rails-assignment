Rails.application.routes.draw do

  root 'models#index'

 resources :models 
end
