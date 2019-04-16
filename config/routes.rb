Rails.application.routes.draw do
  resource :users
  resource :secrets
  resource :session
  get '/', to: "sessions#index", as: "login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
