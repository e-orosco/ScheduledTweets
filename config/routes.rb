  # For details on the DSL aviable within this file, https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET / about
  get "about", to:"about#index"
  
  root to:"main#index"
end
