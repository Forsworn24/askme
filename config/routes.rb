Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions
  resource :session, only: %i[new create destroy]
  resources :users, except: %i[index]

  resources :questions do
    get :hide, on: :member
  end

  # resources :questions do
  #   member do
  #     get :hide
  #   end
  # end 
end
