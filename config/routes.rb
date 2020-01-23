Rails.application.routes.draw do
  resources :tasks
  resources :users

  get '/tasks/:id' => 'tasks#show'
  post '/login' => 'users#login'
  get '/users/:id/tasks' => 'users#tasks'
  

end
