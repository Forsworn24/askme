Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions
  resource :session, only: %i[new create destroy]
  resources :users, param: :nickname, except: %i[index]
  resources :hashtags, param: :name, only: %i[show]

  resources :questions do
    get :hide, on: :member
  end
end
