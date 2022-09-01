Rails.application.routes.draw do
  get "", to: "welcome#index", as: :home

  get "about-us", to: "about#about", as: :about

  get "feedback", to: "static_pages#contact", as: :feedback




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions #create"

  delete "logout", to: "sessions#destroy"



  post 'feedback-response', to: 'static_pages#leave_feedback', as: 'leave_feedback'


  root "welcome#index"
end
