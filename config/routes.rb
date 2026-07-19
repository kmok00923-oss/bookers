Rails.application.routes.draw do
  root "homes#top"

  resources :books

  get "up" => "rails/health#show", as: :rails_health_check
end