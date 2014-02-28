Redit::Application.routes.draw do

  get "/", to: "articles#index"

  resources :users, only: [:new, :create, :show]

end
