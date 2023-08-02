Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/opportunites" => "opportunites#index"
  get "/opportunites/:id" => "opportunites#show"
  post "/opportunites" => "opportunites#create"
  patch "/opportunites" => "opportunites#update"
  delete "/opportunites" => "opportunites#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users" => "users#update"
  delete "/users" => "users#destroy"
end
