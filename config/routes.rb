Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions

  resources :questions do
    member do
      get :hide
    end
  end
end
