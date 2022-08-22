Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions
  resource :session, only: %i[new create destroy]
  resources :users, param: :nickname, except: %i[index]

  # get '/users/:nickname', to: 'users#show'

  resources :questions do
    get :hide, on: :member
  end

  # resources :questions do
  #   member do
  #     get :hide
  #   end
  # end 
end
