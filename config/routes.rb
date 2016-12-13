Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :v1 do
    get "/employee/:id", to: "employees#show"
    get "/employees", to: "employees#index"
    post "/employees", to: "employees#create"
    patch "/employee/:id", to: "employees#update"
    delete "/employee/:id", to: "employees#destroy"
  end


  namespace :v2 do
    resources :employees
  end

end
