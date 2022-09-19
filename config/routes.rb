Rails.application.routes.draw do
  get "", to: "welcome#index", as: :home

  get "about-us", to: "about#about", as: :about

  get "feedback", to: "static_pages#contact", as: :feedback




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")


  post 'feedback-response', to: 'static_pages#leave_feedback', as: 'leave_feedback'


  root "welcome#index"
end
