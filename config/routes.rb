Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/pets" => "pets#index"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  patch "/pets/:id" => "pets#update"
  delete "pets/:id" => "pets#destroy"
end
