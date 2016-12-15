Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get "/employees/:id", to: "employees#show"
      get "/employees", to: "employees#index"
      post "/employees", to: "employees#create"
      patch "/employees/:id", to: "employees#update"
      delete "/employees/:id", to: "employees#destroy"
    end

    namespace :v2 do
      resources :employees
    end
  end


end
