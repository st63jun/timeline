Rails.application.routes.draw do

  root 'stack#index'

  post   '/stack' => 'stack#create'
  delete '/stack' => 'stack#destroy'

  resources :projects
  resources :tasks
  resources :tags

end
