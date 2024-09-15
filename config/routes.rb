Rails.application.routes.draw do
  root "pages#index"

  get "dashboard"    => "users#show",         as: :dashboard
  get "sign-up"      => "users#new",          as: :sign_up
  post "save-email"  => "users#save_email",   as: :save_email
  get "new-password" => "users#new_password", as: :new_password
  post "users"       => "users#create",       as: :create_user

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
