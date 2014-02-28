Redit::Application.routes.draw do

  # get "/", to: "articles#index"
  root "articles#index"
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  resources :users, only: [:new, :create, :show]

end
