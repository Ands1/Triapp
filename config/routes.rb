Rails.application.routes.draw do
  namespace :user do
    namespace :topic do
      resources :answers
    end
  end
  namespace :topic do
    resources :choices
  end
  namespace :quiz do
    resources :topics
  end
  devise_for :users
  resources :quizzes
  root to: "home#index"
end
