Rails.application.routes.draw do
  resources :tasks
  resources :users

  get '/tasks/:id' => 'tasks#show'

end
