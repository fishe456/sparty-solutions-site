Rails.application.routes.draw do
  get "/tickets", to: "tickets#index"

  get "/tickets/new", to: "tickets#new"
  post "/tickets", to: "tickets#create"

  get "/tickets/:id", to: "tickets#show"

  get "/tickets/:id/edit", to: "tickets#edit"
  patch "/tickets/:id", to: "tickets#update"
  put "/tickets/:id", to: "tickets#update"

  delete "/tickets/:id", to: "tickets#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "tickets#index"
  resources :tickets
end
