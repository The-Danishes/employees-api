Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/employee/:id", to: "employees#show"
  get "/employees", to: "employees#index"

  post "/employees", to: "employees#create"
end
