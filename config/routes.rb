Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root to: "home#index"
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  devise_scope :users do
    namespace :users do
      resources :articles
    end
  end
  
end
