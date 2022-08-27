Rails.application.routes.draw do
  resources :qwipps
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "qwipps#index"
end
