  # For details on the DSL aviable within this file, https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET / about
  get "about", to:"about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "session#destroy"

  root to:"main#index"
end
