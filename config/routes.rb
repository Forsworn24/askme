Rails.application.routes.draw do
  root to: 'questions#index'
  
  resources :questions
  get '/questions/:id/hide', to: 'questions#hide', as: 'hide_question'
end
