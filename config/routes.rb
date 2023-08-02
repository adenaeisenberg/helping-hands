Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/opportunities" => "opportunities#index"
  get "/opportunities/:id" => "opportunities#show"
  post "/opportunities" => "opportunities#create"
  patch "/opportunities" => "opportunities#update"
  delete "/opportunities" => "opportunities#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users" => "users#update"
  # delete "/users" => "users#destroy"
end
