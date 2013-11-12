StudyEnglish::Application.routes.draw do
  mount API => '/'

  devise_for :users
  devise_for :admin_users

  # resources :word_categories
  resources :courses, only: [:index, :show, :update, :destroy] do
    member do
      get :explore # 探索模式
      get :test # 测试模式
    end

    resources :words, only: [:index]
  end
  resources :quiz_answers
  resources :new_words, only: [:index, :show, :create, :destroy]

  root 'welcome#index'

  namespace :admin do
    resources :words
    resources :word_categories

    root "welcome#index"
    get "verify" => "welcome#verify"
  end
end
