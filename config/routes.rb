Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/opportunities/:id/edit" => "opportunities#edit"
  patch "/opportunities" => "opportunities#update"

  get "/opportunities/new" => "opportunities#new"
  post "/opportunities" => "opportunities#create"

  get "/opportunities" => "opportunities#index"
  get "/opportunities/:id" => "opportunities#show"
  delete "/opportunities" => "opportunities#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users" => "users#update"
  # delete "/users" => "users#destroy"
end
